package com.javalec.ex.util;

import java.security.GeneralSecurityException;
import java.security.MessageDigest;
import java.security.SecureRandom;
import java.util.Base64;

import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.PBEKeySpec;

public final class PasswordUtil {
	private static final String PREFIX = "pbkdf2_sha256";
	private static final int ITERATIONS = 120000;
	private static final int SALT_BYTES = 16;
	private static final int KEY_BITS = 256;
	private static final SecureRandom RANDOM = new SecureRandom();

	private PasswordUtil() {
	}

	public static String hash(String password) {
		if (password == null || password.isEmpty()) {
			throw new IllegalArgumentException("Password must not be empty.");
		}
		byte[] salt = new byte[SALT_BYTES];
		RANDOM.nextBytes(salt);
		byte[] derived = derive(password, salt, ITERATIONS);
		return PREFIX + "$" + ITERATIONS + "$"
				+ Base64.getEncoder().encodeToString(salt) + "$"
				+ Base64.getEncoder().encodeToString(derived);
	}

	public static boolean matches(String password, String storedPassword) {
		if (password == null || storedPassword == null) {
			return false;
		}
		if (!isHashed(storedPassword)) {
			return MessageDigest.isEqual(password.getBytes(java.nio.charset.StandardCharsets.UTF_8),
					storedPassword.getBytes(java.nio.charset.StandardCharsets.UTF_8));
		}
		try {
			String[] parts = storedPassword.split("\\$", 4);
			int iterations = Integer.parseInt(parts[1]);
			byte[] salt = Base64.getDecoder().decode(parts[2]);
			byte[] expected = Base64.getDecoder().decode(parts[3]);
			return MessageDigest.isEqual(expected, derive(password, salt, iterations));
		} catch (RuntimeException exception) {
			return false;
		}
	}

	public static boolean isHashed(String storedPassword) {
		return storedPassword != null && storedPassword.startsWith(PREFIX + "$");
	}

	private static byte[] derive(String password, byte[] salt, int iterations) {
		PBEKeySpec spec = new PBEKeySpec(password.toCharArray(), salt, iterations, KEY_BITS);
		try {
			return SecretKeyFactory.getInstance("PBKDF2WithHmacSHA256").generateSecret(spec).getEncoded();
		} catch (GeneralSecurityException exception) {
			throw new IllegalStateException("Password hashing is unavailable.", exception);
		} finally {
			spec.clearPassword();
		}
	}
}
