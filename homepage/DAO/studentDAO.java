package DAO;
import java.sql.*;
import javax.naming.NamingException;
import util.*;


public class studentDAO {

    
//학생추가하는 기능
	 public boolean insert(String uname, String ugrade, String ustudentId,String usubject, String uschedulendDays, String uattend) throws NamingException, SQLException {
	        Connection conn = null;
	        PreparedStatement stmt = null;
	        try {
	            String sql = "INSERT INTO Student(id, name, grade, studentId,subject,schedulendDays,attend,timeAtEnter) VALUES(NULL, ?, ?, ?, ?,?,?,now())";
	            
	            conn = ConnectionPool.get();
	            stmt = conn.prepareStatement(sql);
	            stmt.setString(1, uname);
	            stmt.setString(2, ugrade);
	            stmt.setString(3, ustudentId);
	            stmt.setString(4, usubject);
	            stmt.setString(5, uschedulendDays);
	            stmt.setString(6, uattend);
	            
	            int count = stmt.executeUpdate();
	            return (count > 0) ? true : false;
	            
	        } finally {
	            if (stmt != null) stmt.close(); 
	            if (conn != null) conn.close();
	        }
	    } 
	 //학생조회 (출결상황 조회할 때)
	 public boolean exists(String ustudentId) throws NamingException, SQLException {
	        Connection conn = null;
	        PreparedStatement stmt = null;
	        ResultSet rs = null;
	        try {
	            String sql = "SELECT * FROM Student WHERE studentId = ?";
	            
	            conn = ConnectionPool.get();
	            stmt = conn.prepareStatement(sql);
	            stmt.setString(1, ustudentId);
	            
	            rs = stmt.executeQuery();
	            return rs.next();
	            
	        } finally {
	            if (rs != null) rs.close(); 
	            if (stmt != null) stmt.close(); 
	            if (conn != null) conn.close();
	        }
	    }
	 
	 //학생 출결상황 변경할 때 
	 public boolean update(String uAttende,String ustudentId) throws NamingException, SQLException {
			Connection conn = null;
		    PreparedStatement stmt = null;
	        try {
	            String sql = "update Student set aettend = ? where studentId = ?";
	            
	            conn = ConnectionPool.get();
	            stmt = conn.prepareStatement(sql);
	            stmt.setString(1, uAttende);
	            stmt.setString(2, ustudentId);
	            
	            int count = stmt.executeUpdate();
	            return (count > 0) ? true : false;
	            
	        } finally {
	            if (stmt != null) stmt.close(); 
	            if (conn != null) conn.close();
	        }
	    }
	 //새로고침하는거
	 public boolean reset () throws NamingException, SQLException {
	        Connection conn = null;
	        PreparedStatement stmt = null;
	        ResultSet rs = null;
	        try {
	            String sql = "SELECT * FROM Student";
	            
	            conn = ConnectionPool.get();
	            stmt = conn.prepareStatement(sql);
	            
	            rs = stmt.executeQuery();
	            return rs.next();
	            
	        } finally {
	            if (rs != null) rs.close(); 
	            if (stmt != null) stmt.close(); 
	            if (conn != null) conn.close();
	        }
	    }
	 

	 
}

