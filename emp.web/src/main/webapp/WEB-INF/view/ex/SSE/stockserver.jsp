<%@ page contentType="text/event-stream;charset=utf-8"%>
retry: <%= (int)(Math.random() * 2000)%>
<%
	String[] symbols = new String[]{"Samsung", "LG", "ConSolution"};
	for(String symbol : symbols) {
		int delta = (int)(Math.random() * 10);
		
		if(delta < 7) {
			if(System.currentTimeMillis() % 2 == 0)
				delta = -delta;
%>
data: <%= symbol %>
data: <%= delta %>
<%
		}
	}
%>

