package dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import entities.user_ticket;
import help.connectionprovider;
public class uticketdao {
	 private Connection con;

	public uticketdao(Connection con) {
		this.con = con;
	}
	 
	 public boolean saveUser(user_ticket user) {
	    	boolean f=false;
	    	try {
	    		
	    		String query = "insert into bookticket(trainno,jdate,destinationstation,startstation,name,email,phoneno,gender,ticketno,ticketfair) value(?,?,?,?,?,?,?,?,?,?)";
	    		PreparedStatement pstmt = this.con.prepareStatement(query);
	    		pstmt.setString(1, user.getTrainno());
	    		pstmt.setString(2, user.getJdate());
	    		pstmt.setString(3, user.getDestination());
	    		pstmt.setString(4, user.getStart());
	    		pstmt.setString(5, user.getName());
	    		pstmt.setString(6, user.getEmail());
	    		pstmt.setString(7, user.getPhoneno());
	    		pstmt.setString(8, user.getGender());
	    		pstmt.setString(9, user.getSeat());
	    		pstmt.setString(10,user.getFair());
	    		
	    		pstmt.executeUpdate();
	    		f=true;
	    	}catch(Exception e)
	    	{
	    		e.printStackTrace();
	    	}
	    	return f;
	     }
	    
	   /** public user_ticket getUserByEmailAndPassword(String email, String password)
	    {
	    	user_data user = null;
	    	
	    	try {
	    		String query="select * from user_data where email=? and pass=?";
	    		PreparedStatement pstmt = con.prepareStatement(query);
	    		pstmt.setString(1, email);
	    		pstmt.setString(2, password);
	    		
	    		ResultSet set = pstmt.executeQuery();
	    		
	    		if(set.next())
	    		{
	    			user = new user_data();
	    			String name = set.getString("name");
	    			user.setName(name);
	    			user.setId(set.getInt("id"));
	    			user.setEmail(set.getString("email"));
	    			user.setPassword(set.getString("pass"));
	    		}
	    	}catch(Exception e)
	    	{
	    		e.printStackTrace();
	    	}
	    	
	    	return user;
	    }*/
}
