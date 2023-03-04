package dao;
import help.connectionprovider;
import entities.user_data;
import java.sql.*;

import entities.user_data;
public class userdao {
    private Connection con;

	public userdao(Connection con) {
		this.con = con;
	}
    
    public boolean saveUser(user_data user) {
    	boolean f=false;
    	try {
    		
    		String query = "insert into user_data(name,email,pass) value(?,?,?)";
    		PreparedStatement pstmt = this.con.prepareStatement(query);
    		pstmt.setString(1, user.getName());
    		pstmt.setString(2, user.getEmail());
    		pstmt.setString(3, user.getPassword());
    		
    		pstmt.executeUpdate();
    		f=true;
    	}catch(Exception e)
    	{
    		e.printStackTrace();
    	}
    	return f;
     }
    
    public user_data getUserByEmailAndPassword(String email, String password)
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
    }

    
    
}
