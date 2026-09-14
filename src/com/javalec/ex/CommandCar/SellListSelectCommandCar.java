package com.javalec.ex.CommandCar;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javalec.ex.Dao.BDao;
import com.javalec.ex.Dto.BDto6;

public class SellListSelectCommandCar implements CommandCar {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		String keyword = normalize(request.getParameter("keyword"));
		String brand = normalize(request.getParameter("Car_brand"));
		String type = normalize(request.getParameter("Car_type"));
		String color = normalize(request.getParameter("Car_color"));
		Integer minPrice = parsePrice(request.getParameter("sCar_salePrice1"));
		Integer maxPrice = parsePrice(request.getParameter("sCar_salePrice2"));

		if (minPrice != null && maxPrice != null && minPrice > maxPrice) {
			Integer temporaryPrice = minPrice;
			minPrice = maxPrice;
			maxPrice = temporaryPrice;
		}

		BDao dao = new BDao();
		ArrayList<BDto6> sellList = dao.SellList_select(keyword, brand, type, color, minPrice, maxPrice);

		request.setAttribute("SellList", sellList);
		request.setAttribute("searchApplied", Boolean.TRUE);
		request.setAttribute("searchKeyword", keyword);
	}

	private String normalize(String value) {
		if (value == null) {
			return null;
		}
		String normalized = value.trim();
		return normalized.isEmpty() ? null : normalized;
	}

	private Integer parsePrice(String value) {
		String normalized = normalize(value);
		if (normalized == null) {
			return null;
		}
		try {
			int price = Integer.parseInt(normalized.replace(",", ""));
			return price < 0 ? null : price;
		} catch (NumberFormatException exception) {
			return null;
		}
	}
}
