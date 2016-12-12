package admin;

import java.sql.ResultSet;

import connectData.ConnectDatabase;

public class Getuser {
	
	ConnectDatabase cn;
	public ResultSet getalluser(String sql){
		ResultSet rs=null;	
		try {
			cn=new ConnectDatabase();
			rs=cn.GetData(sql);
		} catch (Exception e) {
			e.printStackTrace();
		}	
		
		return rs;
	}

}
