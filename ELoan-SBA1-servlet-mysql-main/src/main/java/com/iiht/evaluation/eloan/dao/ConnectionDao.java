package com.iiht.evaluation.eloan.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;

import com.iiht.evaluation.eloan.dto.LoanDto;
import com.iiht.evaluation.eloan.model.ApprovedLoan;
import com.iiht.evaluation.eloan.model.LoanInfo;
import com.iiht.evaluation.eloan.model.User;

public class ConnectionDao {
	private static final long serialVersionUID = 1L;
	private String jdbcURL;
	private String jdbcUsername;
	private String jdbcPassword;
	private Connection jdbcConnection;

	public ConnectionDao(String jdbcURL, String jdbcUsername, String jdbcPassword) {
        this.jdbcURL = jdbcURL;
        this.jdbcUsername = jdbcUsername;
        this.jdbcPassword = jdbcPassword;
    }

	public  Connection connect() throws SQLException {
		if (jdbcConnection == null || jdbcConnection.isClosed()) {
			try {
				Class.forName("com.mysql.jdbc.Driver");
			} catch (ClassNotFoundException e) {
				throw new SQLException(e);
			}
			jdbcConnection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
		}
		return jdbcConnection;
	}

	public void disconnect() throws SQLException {
		if (jdbcConnection != null && !jdbcConnection.isClosed()) {
			jdbcConnection.close();
		}
	}
	
	// put the relevant DAO methods here..
	
	public int registerLoan(LoanInfo loaninfo) throws SQLException{
		Connection con = connect();
		String sql = "insert into loaninfo(applno,purpose,amtrequest,doa,bstructure,bindicator,address,email,mobile) Values(?,?,?,?,?,?,?,?,?);";
		PreparedStatement pst = conn.prepareStatement(SQL){
        pst.setString(1, loaninfo.getApplno());
        pst.setString(2, loaninfo.getPurpose());
        pst.setString(3, loaninfo.getAmtrequest());
        pst.setString(4, loaninfo.getDoa());
        pst.setString(5, loaninfo.getBstructure());
        pst.setString(6, loaninfo.getBindicator());
        pst.setString(7, loaninfo.getAddress());
        pst.setString(8, loaninfo.getEmail());
        pst.setString(9, loaninfo.getMobile());
        
        int k = pst.executeUpdate(); 
        
        return k;
        
		}		
	}
	
	public int modifyLoan(LoanInfo loaninfo) throws SQLException{
		Connection con = connect();
		String sql = "update loaninfo set purpose=? , amtrequest=? , dao=? , bstructure=? , bindicator=? , address=? , email=? , mobile=?   where applno=? ;";
		PreparedStatement pst = conn.prepareStatement(SQL){
      //pst.setString(1, loaninfo.getApplno());
        pst.setString(1, loaninfo.getPurpose());
        pst.setString(2, loaninfo.getAmtrequest());
        pst.setString(3, loaninfo.getDoa());
        pst.setString(4, loaninfo.getBstructure());
        pst.setString(5, loaninfo.getBindicator());
        pst.setString(6, loaninfo.getAddress());
        pst.setString(7, loaninfo.getEmail());
        pst.setString(8, loaninfo.getMobile());
        pst.setString(9, loaninfo.getApplno());
        
        int k = pst.executeUpdate(); 
        
        return k;
        
		}		
	}

	public int processLoan(LoanInfo loaninfo) throws SQLException{

		Connection con = connect();
		String sql = "update loaninfo set status=? where applno=? ;";
		PreparedStatement pst = conn.prepareStatement(SQL){
      //pst.setString(1, loaninfo.getApplno());
        pst.setString(1, loaninfo.getStatus());
        pst.setString(2, loaninfo.getApplno());
        
        int k = pst.executeUpdate(); 
        
        return k;
        
		}		
	}
	
	public int liatAllLoan(LoanInfo loaninfo) throws SQLException{
 
		Connection con = connect();
		String sql = "select * from loaninfo where applno=? ;";
		PreparedStatement pst = conn.prepareStatement(SQL){
        pst.setString(1, loaninfo.getApplno());
                
        int k = pst.executeQuery(); 
        
            
        while (rs.next()) 
        {  
            int a = rs.getString("Applno");  
            String b = rs.getString("Purpose");  
            int c = rs.getInt("Amtrequest");
            Date d = rs.getDate("Doa"); 
            String e = rs.getString("Bstructure");
            String f = rs.getString("Bindicator");
            String g = rs.getString("Address");
            String h = rs.getString("Email");
            int i = rs.getInt("Mobile");;  
            String j = rs.getString("Status");
            
        
            request.setAttribute("LaonInfo",<tr><td> + <%a%> + </td><td> + <%b%> + </td><td> + <%c%> + </td><td> + <%d%> + </td><td> + <%e%> + </td><td> + <%f%> + </td><td> + <%g%> + </td><td> + <%h%> + </td><td> +<%i%> + </td><td> + <%j%> + </td></tr>);
            request.getRequestDispatcher(liastall.jsp).forward(request,response);
            
        return k;
        
		}	
        
        
	}
		
		public int getStatus(int applno) throws SQLException{
			 
			Connection con = connect();
			String sql = "select status from loaninfo where applno=? ;";
			PreparedStatement pst = conn.prepareStatement(SQL){
	        pst.setString(1, getApplno());
	                
	        int k = pst.executeQuery(); 
	        
	            
	        while (rs.next()) 
	        {  
	            String j = rs.getString("Status");
	            
	        
	            request.setAttribute("status",<tr><td> + <%a%> + </td><td> + <%b%> + </td><td> + <%c%> + </td><td> + <%d%> + </td><td> + <%e%> + </td><td> + <%f%> + </td><td> + <%g%> + </td><td> + <%h%> + </td><td> +<%i%> + </td><td> + <%j%> + </td></tr>);
	            request.getRequestDispatcher(loanDetails.jsp).forward(request,response);
	            
	        return k;
	        
			}	
	        
	        
		}


}
