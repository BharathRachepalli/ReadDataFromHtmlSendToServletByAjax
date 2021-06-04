package Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import Model.Login;
import Utility.DbConnect;

public class FeedDataToDatabase {

	public void dataToDatabase(Login login) {
		try (Connection con = new DbConnect().ConnectToDB();
				PreparedStatement stmt = con.prepareStatement("INSERT INTO registration values (?,?,?,?,?,?,? )")) {

			stmt.setString(1, login.getFname());
			stmt.setString(2, login.getLname());
			stmt.setString(3, login.getEmail());
			stmt.setString(4, login.getPassword());
			stmt.setString(5, login.getAddress());
			stmt.setString(6, login.getPhone());
			stmt.setString(7, login.getGender());
			
			stmt.executeUpdate();
		} catch (Exception e) {

			e.printStackTrace();
		}

	}
}
