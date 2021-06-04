package Dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import Model.Login;
import Utility.DbConnect;

public class FetchDataFromDatabsae {

	public List<Login> getData() throws SQLException, Exception {
		List<Login> regList = new ArrayList<Login>();
		String sql = "select * from registration";
		try (Connection con = new DbConnect().ConnectToDB();
				Statement stmt = con.createStatement();
				ResultSet res = stmt.executeQuery(sql);) {

			while (res.next()) {
				Login login = new Login();
				login.setFname(res.getString(1));
				login.setLname(res.getString(2));
				login.setEmail(res.getString(3));
				login.setPassword(res.getString(4));
				login.setAddress(res.getString(5));
				login.setPhone(res.getString(6));
				login.setGender(res.getString(7));

				regList.add(login);
			}

		}
		return regList;
	}

}
