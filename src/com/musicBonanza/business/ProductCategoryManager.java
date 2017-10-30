package com.musicBonanza.business;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import com.musicBonanza.dao.ProductCategoriesDao;
import com.musicBonanza.entity.ProductCategories;
import com.musicBonanza.entity.PurchaseOrder;
import com.musicBonanza.entity.Shipping;
import com.musicBonanza.entity.User;
import com.musicBonanza.*;
/**
 * Business Tier to handle the Product catalog
 * @author ABHI
 *
 */

public class ProductCategoryManager {

	/**
	 * This is method fetches the categories list present in the database and binds them to a combobox in jsp page
	 * @return
	 * @throws Exception
	 */
	public ResultSet getCategoryList() throws Exception {
		ProductCategoriesDao productCategoriesDao = new ProductCategoriesDao();

		String response = null;
		ResultSet resultSet = productCategoriesDao.getCategoryList();
		try {
			if (resultSet != null) {
				while (resultSet.next()) {
					String resultCategory = resultSet.getString("category");
				}

			} else {
				response = "Failure";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return resultSet;
	}
}