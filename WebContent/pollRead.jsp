<%@page import="com.koreait.onLinePoll.PollRead"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>투표하기</title>
<link rel="icon" href="./favicon-16x16.png">
</head>
<body>

<%
	String filepath = application.getRealPath("/") + "poll.txt";
	ArrayList<String> poll = PollRead.pollRead(filepath);
	int itemCount = (poll.size() - 1) / 2;
%>

<form action="pollWrite.jsp" method="post">

	<table width='500' border='1' align='center' cellpadding="5" cellspacing="0">
	
		<tr height="50">
			<th>
				<%=poll.get(0)%>
			</th>
		</tr>
	
	<%
		for (int i = 1; i <= itemCount; i++) {
	%>
		<tr height='50'>
			<td>
				<input type="radio" name='poll' value='<%=i%>'><%=poll.get(i)%>
			</td>
		</tr>
	<%
		}
	%>
	
		<tr height='50'>
			<td align="center">
				<input type="submit" value="투표하기">
				<input type="button" value="결과보기" onclick="location.href='pollResult.jsp'">
			</td>
		</tr>
	
	</table>
</form>
</body>
</html>



























