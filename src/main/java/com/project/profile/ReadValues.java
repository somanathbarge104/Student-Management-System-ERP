package com.project.profile;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.project.common.DB_Connection;
import com.project.common.User_Bean;

public class ReadValues {
	public List<User_Bean> get_values(String email) {
	    DB_Connection obj_DB_Connection=new DB_Connection();
	    Connection connection=obj_DB_Connection.get_connection();
	    PreparedStatement ps=null;
	    ResultSet rs=null;
	    List<User_Bean> list=new ArrayList<User_Bean>();
	    try {
	        String querry="SELECT * FROM signup_student WHERE uemail=?";
	        ps=connection.prepareStatement(querry);
	        ps.setString(1, email);
	        rs=ps.executeQuery();
	        while(rs.next()){
	            User_Bean obj_User_Bean=new User_Bean();
	            obj_User_Bean.setId(rs.getString("id"));
	            obj_User_Bean.setName(rs.getString("uname"));
	            obj_User_Bean.setEmail(rs.getString("uemail"));
	            obj_User_Bean.setContact(rs.getString("umobile"));
	            obj_User_Bean.setPadr(rs.getString("upadr"));
	            obj_User_Bean.setDob(rs.getString("udob"));
	            obj_User_Bean.setPrn(rs.getString("prn"));
	            obj_User_Bean.setCyear(rs.getString("cyear"));
	            obj_User_Bean.setBranch(rs.getString("branch"));
	            obj_User_Bean.setDoa(rs.getString("doa"));
	            
	          
	            list.add(obj_User_Bean);
	        }
	    } catch (Exception e) {
	        System.out.println(e);
	    }
	    return list;
	}

}
