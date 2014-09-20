/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.garc.oauth;

import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import org.garc.config.DBObject;
import org.json.simple.JSONObject;

/**
 *
 * @author Ramkumar
 */
public class UserInfo {

    public JSONObject getAuthToken(String username, String password) throws ClassNotFoundException, SQLException, IOException {
        DBObject dbObj = new DBObject();
        JSONObject json = new JSONObject();
        PreparedStatement stmt = dbObj.getDbConection().prepareStatement("select staff_id,qualification,designation,title,staff_name,user_name,user_type,DATE_FORMAT(day, '%W %d,%M %Y') ,DATE_FORMAT(day, '%r') last_login_at from staff where user_name = ? and pass=password(?)");
        stmt.setString(1, username);
        stmt.setString(2, password);
        ResultSet result = stmt.executeQuery();
        if (result.next()) {
            json.put("id", result.getString("staff_id"));
            json.put("name", result.getString("staff_name"));
            json.put("type", result.getString("user_type"));
            json.put("login_id", result.getString("user_name"));
            json.put("qualification", result.getString("qualification"));
            json.put("designation", result.getString("designation"));
            json.put("title", result.getString("title"));
            json.put("last_login_at", result.getString("last_login_at"));
        } else {
            stmt.close();
            stmt = dbObj.getDbConection().prepareStatement("select student_name,username,semester,section,student_id, DATE_FORMAT(day, '%W %d,%M %Y') ,DATE_FORMAT(day, '%r') last_login_at,isattend from students where username= ? and pass=password(?)");
            stmt.setString(1, username);
            stmt.setString(2, password);
            result = stmt.executeQuery();
            if (result.next()) {
                json.put("id", result.getString("student_id"));
                json.put("name", result.getString("student_name"));
                json.put("semester", result.getString("semester"));
                json.put("section", result.getString("section"));
                json.put("login_id", result.getString("username"));
                json.put("type", "student");
                json.put("block", result.getString("isattend"));
                
                json.put("last_login_at", result.getString("last_login_at"));
            }
        }
        dbObj.finalize();
        return json;
    }
}
