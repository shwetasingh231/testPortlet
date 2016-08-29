<%@ page import="java.util.Map"%>
<%@ page import="javax.portlet.PortletPreferences" %>
<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>


<portlet:defineObjects />
<h3>Display Employee Details</h3>
<%
Map<String,String> studentMap=(Map<String,String>)renderRequest.getAttribute("studentMap");
if(studentMap!=null){
%>
Student Name: <%=studentMap.get("fullname")%>     <br/>
Student Age: <%=studentMap.get("age")%><br/>
Student Address: <%=studentMap.get("address")%>     <br/>
Student Qalification: <%=studentMap.get("qualification")%><br/>
Student Percent: <%=studentMap.get("percent")%>     <br/>
Student Year Of Passing: <%=studentMap.get("yop")%><br/>
<%}%>