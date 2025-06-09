/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import dto.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import mylib.DBUtils;
/**
 *
 * @author 2imtina
 */
public class UserDAO {
    public User getUserByEmail(String email) throws Exception {
        User result = null;
        Connection cn = null;
        PreparedStatement pst = null;
        ResultSet rs = null;
        
        try {
            cn = DBUtils.getConnection();
            if (cn != null) {
                String sql = "select id,name,email,password,role,status\n"
                    + "from [users]\n"
                    + "where email=?";
                pst = cn.prepareStatement(sql);
                pst.setString(1, email);
                rs = pst.executeQuery();
                
                if(rs != null && rs.next()) {
                    int id = rs.getInt("id");
                    String name = rs.getString("name");
                    String password = rs.getString("password");
                    String role = rs.getString("role");
                    String status = rs.getString("status");
                    result = new User(id, name, email, password, role, status);
                }
            }
        } catch (Exception e) {
            throw new Exception("Error getting user by email: " + e.getMessage());
        } finally {
            try {
                if(rs != null) rs.close();
                if(pst != null) pst.close();
                if(cn != null) cn.close();
            } catch (Exception e) {
                throw new Exception("Error closing resources: " + e.getMessage());
            }
        }
        
        return result;
    }
    
    public boolean checkLogin(String email, String password) throws Exception {
        if(email == null || email.trim().isEmpty() || password == null || password.trim().isEmpty()) {
            return false;
        }
        
        User user = getUserByEmail(email);
        return user != null && user.getPassword().equals(password);
    }
    
    //Dung de chen vao nguoi dung moi khi dang ki
    public int insertNewUser(String name, String email, String password) throws Exception {
        int result = 0;
        Connection cn = null;
        PreparedStatement st = null;
        ResultSet rs = null;
        
        try {
            cn = DBUtils.getConnection();
            
            String sql = "INSERT INTO users (name, email, password, role, status) VALUES (?, ?, ?, 'user', 'active')";
            st = cn.prepareStatement(sql);
            st.setString(1, name);
            st.setString(2, email);
            st.setString(3, password);
            result = st.executeUpdate();
            
        } catch (Exception e) {
            throw new Exception("Error register: " + e.getMessage());
        } finally {
            try {
                if(rs != null) rs.close();
                if(st != null) st.close();
                if(cn != null) cn.close();
            } catch (Exception e) {
                throw new Exception("Error closing resources: " + e.getMessage());
            }
        }
        
        return result;
    }
}


