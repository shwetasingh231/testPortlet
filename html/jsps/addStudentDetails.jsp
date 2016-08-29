<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>
<portlet:defineObjects />
<portlet:actionURL var="addStudentActionURL" windowState="normal" name="registerStudent">
</portlet:actionURL>
<style>
div.ex {
	text-align: right width:300px;
	padding: 10px;
	margin: 0px
}
</style>

<div class="ex">
<h3> Add Student Details</h3>
<form action="<%=addStudentActionURL%>" name="addStudentDetailsForm"  method="POST">
Student Name<br/>
<input  type="text" name="<portlet:namespace/>fullname" id="<portlet:namespace/>fullname"/><br/>
Student Age<br/>
<input type="text" name="<portlet:namespace/>age" id="<portlet:namespace/>age"/><br/>
Student Address<br/>
<input  type="text" name="<portlet:namespace/>address" id="<portlet:namespace/>address"/><br/>
Student Qualification<br/>
<input type="text" name="<portlet:namespace/>qualification" id="<portlet:namespace/>qualification"/><br/>
Student Percent<br/>
<input  type="text" name="<portlet:namespace/>percent" id="<portlet:namespace/>percent"/><br/>
Student Year Of Passing<br/>
<input type="text" name="<portlet:namespace/>yop" id="<portlet:namespace/>yop"/><br/>



<input type="submit" name="addStudentDetailsBtn" id="addStudentDetailsBtn" value="Add Student Details"/>
</form>
</div>

