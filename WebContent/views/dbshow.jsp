<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Database Show</title>
    <style type="text/css">  
    .td2 { border-bottom: #9999FF solid 1px; }  
    .td3 { border-bottom: #9999FF solid 1px;  border-right: #9999FF solid 1px; }  
    </style>  
</head>
<body>

<!-- Show ${database}  -->
<table border="1" rules="none" bordercolor="#969696" style="empty-cells: show"      
   width="350" cellpadding="2" cellspacing="0" >                                       
<tr bgcolor="#CCFFFF">                                                             
        <td class="td2" valign="top">                                                 

   <table border="1" rules="none" bordercolor="#969696" style="empty-cells: show"      
    width="350" cellpadding="2" cellspacing="0">                                       
    <tr bgcolor="#CCFFFF">                                                             
        <td colspan="100" class="td2">                                                 
            <font color="0000FF">Area Information</font>                                    
        </td>                            
    </tr>    
    <tr align="center" bgcolor="#99CCFF">              
                <td class="td3">  
                  <font color="#0000FF">id</font>  
                </td>  
                <td class="td3">  
                  <font color="#0000FF">left_up</font>  
                </td>  
                <td class="td3">  
                  <font color="#0000FF">left_down</font>  
                </td>  
                <td class="td3">  
                  <font color="#0000FF">right_up</font>  
                </td>  
                <td class="td3">  
                  <font color="#0000FF">right_down</font>  
                </td>  
    </tr>             
    <c:forEach items="${alist}" var="ainfo">             
        <tr align="center">             
                <td width="20%" class="td3">  
                  ${ainfo.id}
                </td>  
                <td width="20%" class="td3">  
                 ${ainfo.left_up}
                </td>  
                <td width="20%" class="td3">  
                 ${ainfo.left_down}
                </td>  
                <td width="20%" class="td3">  
                 ${ainfo.right_up}
                </td>  
                <td width="20%" class="td3">  
                 ${ainfo.right_down}
                </td>  
        </tr>              
    </c:forEach>              
 </table>  
 
<br>

   <table border="1" rules="none" bordercolor="#969696" style="empty-cells: show"      
    width="350" cellpadding="2" cellspacing="0">                                       
    <tr bgcolor="#CCFFFF">                                                             
        <td colspan="100" class="td2">                                                 
            <font color="0000FF">BS Information</font>                                    
        </td>                            
    </tr>    
    <tr align="center" bgcolor="#99CCFF">              
                <td class="td3">  
                  <font color="#0000FF">id</font>  
                </td>  
                <td class="td3">  
                  <font color="#0000FF">frequency</font>  
                </td>  
                <td class="td3">  
                  <font color="#0000FF">rssi</font>  
                </td>  
                <td class="td3">  
                  <font color="#0000FF">mcc</font>  
                </td>  
                <td class="td3">  
                  <font color="#0000FF">mnc</font>  
                </td>  
                <td class="td3">  
                  <font color="#0000FF">la</font>  
                </td>  
                <td class="td3">  
                  <font color="#0000FF">areas_id</font>  
                </td>  
    </tr>             
    <c:forEach items="${blist}" var="binfo">             
        <tr align="center">             
                <td width="14%" class="td3">  
                  ${binfo.id}
                </td>  
                <td width="14%" class="td3">  
                 ${binfo.frequency}
                </td>  
                <td width="14%" class="td3">  
                 ${binfo.rssi}
                </td>  
                <td width="14%" class="td3">  
                 ${binfo.mcc}
                </td>  
                <td width="14%" class="td3">  
                 ${binfo.mnc}
                </td>  
                <td width="14%" class="td3">  
                 ${binfo.la}
                </td>  
                <td width="16%" class="td3">  
                 ${binfo.areas_id}
                </td>  
        </tr>              
    </c:forEach>              
 </table>  

</td>
<td>

		<table border="1" rules="none" bordercolor="#969696" style="empty-cells: show"      
		   width="580" height="850" cellpadding="2" cellspacing="0" background='resources/images/map.png'>  
				<c:forEach items="${rowList}" var="cellrow">
				<tr>
				 	<c:forEach items="${cellrow.cellList}" var="cell">
					 <td><font size=1>  ${cell.frqNum} </font> </td>
					</c:forEach> 
				</tr>
				</c:forEach> 
		</table>

</td>
</tr>
</table>

</body>
</html>