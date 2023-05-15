package com.project.aregistration;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.project.common.DB_Connection;
import com.project.common.User_Bean;

public class ARead_Values {
	
	public static void main(String[] args) {
		ARead_Values obj_Read_Values=new ARead_Values();
		obj_Read_Values.get_values();
	}
	public List get_values(){
		DB_Connection obj_DB_Connection=new DB_Connection();
		Connection connection=obj_DB_Connection.get_connection();
		PreparedStatement ps=null;
		ResultSet rs=null;
		List<User_Bean> list=new ArrayList<User_Bean>();
		try {
		String querry="select * from signup_student";
		ps=connection.prepareStatement(querry);		
		rs=ps.executeQuery();
		while(rs.next()){
		  User_Bean obj_User_Bean=new User_Bean();
	     obj_User_Bean.setId(rs.getString("id"));
	     obj_User_Bean.setName(rs.getString("uname"));
	     obj_User_Bean.setContact(rs.getString("umobile"));
	     obj_User_Bean.setEmail(rs.getString("uemail"));

		list.add(obj_User_Bean);
		}
		} catch (Exception e) {
		System.out.println(e);
		}
		return list;
		}


}
