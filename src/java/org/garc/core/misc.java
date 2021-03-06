/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.garc.core;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.apache.commons.codec.digest.DigestUtils;
import org.garc.config.DBObject;
import org.garc.oauth.UserInfo;
import org.json.simple.JSONObject;

/**
 *
 * @author Ramkumar
 */
public class misc {

    public static Map<String, Integer> facultyType = new HashMap<String, Integer>() {
        {
            put("Professor", 1);
            put("Associate Professor", 2);
            put("Asst. Professor", 3);
            put("Visiting Professor", 4);
            put("S.G. Lecturer", 5);
            put("Sr. Lecturer", 6);
            put("Lecturer", 7);
            put("Office Assitant", 8);
            put("Library Assistant", 9);
            put("Lab Assistant", 10);
        }
    };

    public JSONObject getHitCount(boolean isNew) throws IOException {
        String sql = "update misc set value = value + 1 where type like 'hit_count'";
        JSONObject json = new JSONObject();
        DBObject dbObj = new DBObject();
        try {
            if (isNew) {
                Statement st = dbObj.getDbStatement();
                st.executeUpdate(sql);
                st.close();
            }
            sql = "select value from misc where type like 'hit_count'";
            ResultSet rs = dbObj.getDbResultSet(sql);
            if (rs.next()) {
                json.put("count", rs.getString("value"));
            } else {
                json.put("message", "Not Found");
                json.put("responsecode", "404");
            }

        } catch (Exception e) {
            json.put("responsecode", "500");
            json.put("message", e.toString());
            e.printStackTrace();
        }

        try {
            dbObj.close();
        } catch (SQLException ex) {
            Logger.getLogger(UserInfo.class.getName()).log(Level.SEVERE, null, ex);
        }
        return json;
    }

    public static JSONObject getApplicationSettings() throws IOException {

        String sql = "select * from misc ";
        JSONObject json = new JSONObject();
        DBObject dbObj = new DBObject();
        try {
            ResultSet rs = dbObj.getDbResultSet(sql);
            while (rs.next()) {
                json.put(rs.getString("type"), rs.getString("value"));
            }

        } catch (Exception e) {
            json.put("responsecode", "500");
            json.put("message", e.toString());
            e.printStackTrace();
        }

        try {
            dbObj.close();
        } catch (SQLException ex) {
            Logger.getLogger(UserInfo.class.getName()).log(Level.SEVERE, null, ex);
        }
        return json;
    }

    public static void main(String[] args) throws UnsupportedEncodingException {

        try {
            System.out.println(getApplicationSettings());
        } catch (IOException ex) {
            Logger.getLogger(misc.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public static String MySQLPassword(String plainText) throws UnsupportedEncodingException {
        byte[] utf8 = plainText.getBytes("UTF-8");
        return "*" + DigestUtils.shaHex(DigestUtils.sha(utf8)).toUpperCase();
    }

    public static String getNow() {
        Date now = new Date();
        String pattern = "yyyy-MM-dd HH:mm:ss";
        SimpleDateFormat formatter = new SimpleDateFormat(pattern);
        String mysqlDateString = formatter.format(now);
        //System.out.println("Java's Default Date Format: " + now);
        return mysqlDateString;
    }

    public static String toSectionAsString(int section) {
        return String.valueOf((char) ('A' + (section - 1)));
    }

    public static String toSectionAsString(Object section) {
        return String.valueOf((char) ('A' + (Integer.parseInt(section.toString()) - 1)));
    }

    public static int toSectionAsInt(String section) {
        return (int) ('A' - (section.toCharArray()[0]) + 1);
    }

}
