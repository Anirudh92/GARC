<%-- 
    Document   : login
    Created on : Sep 27, 2014, 1:49:11 PM
    Author     : Ramkumar
--%>

<%@page import="org.json.simple.JSONObject"%>
<%@page import="org.garc.oauth.UserInfo"%>
<%
UserInfo user = new UserInfo();
JSONObject json = user.getAuthToken(request.getParameter("username").toString(), request.getParameter("password").toString());
if(json.get("responsecode") !=null && json.get("responsecode").equals("301")){
    session.setAttribute("user", json);
}
out.println(json.toJSONString());
out.flush();
%>