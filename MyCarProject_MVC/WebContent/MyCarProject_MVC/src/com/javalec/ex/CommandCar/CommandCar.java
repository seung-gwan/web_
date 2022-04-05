package com.javalec.ex.CommandCar;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface CommandCar {
	void execute (HttpServletRequest request, HttpServletResponse response);

}
