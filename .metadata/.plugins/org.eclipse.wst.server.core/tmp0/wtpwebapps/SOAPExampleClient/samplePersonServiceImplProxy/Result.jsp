<%@page contentType="text/html;charset=UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<HTML>
<HEAD>
<TITLE>Result</TITLE>
</HEAD>
<BODY>
<H1>Result</H1>

<jsp:useBean id="samplePersonServiceImplProxyid" scope="session" class="service.PersonServiceImplProxy" />
<%
if (request.getParameter("endpoint") != null && request.getParameter("endpoint").length() > 0)
samplePersonServiceImplProxyid.setEndpoint(request.getParameter("endpoint"));
%>

<%
String method = request.getParameter("method");
int methodID = 0;
if (method == null) methodID = -1;

if(methodID != -1) methodID = Integer.parseInt(method);
boolean gotMethod = false;

try {
switch (methodID){ 
case 2:
        gotMethod = true;
        java.lang.String getEndpoint2mtemp = samplePersonServiceImplProxyid.getEndpoint();
if(getEndpoint2mtemp == null){
%>
<%=getEndpoint2mtemp %>
<%
}else{
        String tempResultreturnp3 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getEndpoint2mtemp));
        %>
        <%= tempResultreturnp3 %>
        <%
}
break;
case 5:
        gotMethod = true;
        String endpoint_0id=  request.getParameter("endpoint8");
            java.lang.String endpoint_0idTemp = null;
        if(!endpoint_0id.equals("")){
         endpoint_0idTemp  = endpoint_0id;
        }
        samplePersonServiceImplProxyid.setEndpoint(endpoint_0idTemp);
break;
case 10:
        gotMethod = true;
        service.PersonServiceImpl getPersonServiceImpl10mtemp = samplePersonServiceImplProxyid.getPersonServiceImpl();
if(getPersonServiceImpl10mtemp == null){
%>
<%=getPersonServiceImpl10mtemp %>
<%
}else{
%>
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">returnp:</TD>
</TABLE>
<%
}
break;
case 15:
        gotMethod = true;
        String id_1id=  request.getParameter("id18");
        int id_1idTemp  = Integer.parseInt(id_1id);
        boolean deletePerson15mtemp = samplePersonServiceImplProxyid.deletePerson(id_1idTemp);
        String tempResultreturnp16 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(deletePerson15mtemp));
        %>
        <%= tempResultreturnp16 %>
        <%
break;
case 20:
        gotMethod = true;
        String id_2id=  request.getParameter("id29");
        int id_2idTemp  = Integer.parseInt(id_2id);
        beans.Person getPerson20mtemp = samplePersonServiceImplProxyid.getPerson(id_2idTemp);
if(getPerson20mtemp == null){
%>
<%=getPerson20mtemp %>
<%
}else{
%>
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">returnp:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">age:</TD>
<TD>
<%
if(getPerson20mtemp != null){
%>
<%=getPerson20mtemp.getAge()
%><%}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">name:</TD>
<TD>
<%
if(getPerson20mtemp != null){
java.lang.String typename25 = getPerson20mtemp.getName();
        String tempResultname25 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typename25));
        %>
        <%= tempResultname25 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">id:</TD>
<TD>
<%
if(getPerson20mtemp != null){
%>
<%=getPerson20mtemp.getId()
%><%}%>
</TD>
</TABLE>
<%
}
break;
case 31:
        gotMethod = true;
        String age_4id=  request.getParameter("age36");
        int age_4idTemp  = Integer.parseInt(age_4id);
        String name_5id=  request.getParameter("name38");
            java.lang.String name_5idTemp = null;
        if(!name_5id.equals("")){
         name_5idTemp  = name_5id;
        }
        String id_6id=  request.getParameter("id40");
        int id_6idTemp  = Integer.parseInt(id_6id);
        %>
        <jsp:useBean id="beans1Person_3id" scope="session" class="beans.Person" />
        <%
        beans1Person_3id.setAge(age_4idTemp);
        beans1Person_3id.setName(name_5idTemp);
        beans1Person_3id.setId(id_6idTemp);
        boolean addPerson31mtemp = samplePersonServiceImplProxyid.addPerson(beans1Person_3id);
        String tempResultreturnp32 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(addPerson31mtemp));
        %>
        <%= tempResultreturnp32 %>
        <%
break;
case 42:
    gotMethod = true;
    beans.Person[] getAllPersons42mtemp = samplePersonServiceImplProxyid.getAllPersons();
if(getAllPersons42mtemp == null){
%>
<%=getAllPersons42mtemp %>
<%
}else{
    String tempreturnp43 = null;
    if(getAllPersons42mtemp != null){
    java.util.List<beans.Person> listreturnp43= java.util.Arrays.asList(getAllPersons42mtemp);
    //tempreturnp43 = listreturnp43.toString();
    for(beans.Person p : listreturnp43){
    	int id = p.getId();
    	int age = p.getAge();
    	String name=p.getName();
    	%>
    	<%=id%>::<%=name %>::<%=age %>
    	<%
    	}
    }
    }      
break;
}
} catch (Exception e) { 
%>
Exception: <%= org.eclipse.jst.ws.util.JspUtils.markup(e.toString()) %>
Message: <%= org.eclipse.jst.ws.util.JspUtils.markup(e.getMessage()) %>
<%
return;
}
if(!gotMethod){
%>
result: N/A
<%
}
%>
</BODY>
</HTML>