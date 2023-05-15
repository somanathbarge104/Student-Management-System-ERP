package com.project.profile;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.project.common.DB_Connection;

public class UpdateValues {
	public void insert_values(String dob,String gender,String anumber,String studenttype,String category,String religion,String cast,String nationality,String mtongue,String locality,String cadr,String padr,String country,String state,String district,String taluka,String city,String pcode,String faname, String maname, String parentnumber, String parentemail, String occupation, String anuincome, String sclname, String  sboardname, String spassingyear, String sscpercentage, String medu, String clgname, String boardname, String hpassingyear, String hscpercentage, String totalmarks, String group, String physics, String  chemistry, String maths, String biology, String technical, String cetpercentage, String jeepercentage, String dclgname, String course, String dpassingyear, String dpercentage,String email,String branch,String cyear,String doa,String prn)
	{
		 DB_Connection obj_DB_Connection=new DB_Connection();
		 Connection connection=obj_DB_Connection.get_connection();
		 PreparedStatement ps=null;
		try {
	String query="update signup_student set udob=?,ugender=?,uanumber=?,ustudenttype=?,ucategory=?,ureligion=?,ucast=?,unationality=?,umtongue=?,ulocality=?,ucadr=?,upadr=?,ucountry=?,ustate=?,udistrict=?,utaluka=?,ucity=?,upcode=?,ufaname=?, umaname=?, uparentnumber=?, uparentemail=?, uoccupation=?, uanuincome=?, usclname=?,  usboardname=?, uspassingyear=?, usscpercentage=?, umedu=?, uclgname=?, uboardname=?, uhpassingyear=?, uhscpercentage=?, utotalmarks=?, ugroup=?, uphysics=?,  uchemistry=?, umaths=?, ubiology=?, utechnical=?, ucetpercentage=?, ujeepercentage=?, udclgname=?, ucourse=?, udpassingyear=?, udpercentage=?,branch=?,cyear=?,doa=?,prn=? where uemail=?";
		 ps=connection.prepareStatement(query);
		 ps.setString(1, dob);
		 ps.setString(2, gender);
		 ps.setString(3, anumber);
		 ps.setString(4, studenttype);
		 ps.setString(5, category);
		 ps.setString(6, religion);
		 ps.setString(7, cast);//remaining part will continue
		 ps.setString(8, nationality);
		 ps.setString(9, mtongue);
		 ps.setString(10, locality);
		 ps.setString(11, cadr);
		 ps.setString(12, padr);
		 ps.setString(13, country);
		 ps.setString(14, state);
		 ps.setString(15, district);
		 ps.setString(16, taluka);
		 ps.setString(17, city);
		 ps.setString(18, pcode);		 
		 ps.setString(19, faname);
		 ps.setString(20, maname);
		 ps.setString(21, parentnumber);
		 ps.setString(22, parentemail);
		 ps.setString(23, occupation);
		 ps.setString(24, anuincome);
		 ps.setString(25, sclname);
		 ps.setString(26, sboardname);
		 ps.setString(27, spassingyear);
		 ps.setString(28, sscpercentage);
		 ps.setString(29, medu);
		 ps.setString(30, clgname);
		 ps.setString(31, boardname);
		 ps.setString(32, hpassingyear);
		 ps.setString(33, hscpercentage);
		 ps.setString(34, totalmarks);
		 ps.setString(35, group);
		 ps.setString(36, physics);
		 ps.setString(37, chemistry);
		 ps.setString(38, maths);
		 ps.setString(39, biology);
		 ps.setString(40, technical);
		 ps.setString(41, cetpercentage);
		 ps.setString(42, jeepercentage);
		 ps.setString(43, dclgname);
		 ps.setString(44, course);
		 ps.setString(45, dpassingyear);
		 ps.setString(46, dpercentage);
		 ps.setString(47, branch);
		 ps.setString(48, cyear);
		 ps.setString(49, doa);
		 ps.setString(50, prn);		 
		 
		 ps.setString(51, email);
	     
		 ps.executeUpdate();
		} catch (Exception e) {
		 System.err.println(e);
		}
	}

}
