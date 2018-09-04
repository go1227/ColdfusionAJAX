<cfquery name="qSearchPerson" datasource="#thisDataSource#">
    SELECT PERSON.LASTNAME, PERSON.FIRSTNAME, PERSON.MIDDLENAME
    FROM PERSON
    WHERE PERSON.LASTNAME LIKE '%#url.lname#%'
    ORDER BY PERSON.LASTNAME, PERSON.FIRSTNAME ASC
</cfquery>
<span>
	<br><br>
	<cfif qSearchPerson.RecordCount eq 0>
    	<strong><div style="color:red;" align="center">Last name not found</div></strong>
    <cfelse>
        <table width="100%" border="1" cellpadding="5" cellspacing="0">
        	<cfoutput query="qSearchPerson">
                <tr>
                    <td>#qSearchPerson.LASTNAME#, #qSearchPerson.FIRSTNAME# #qSearchPerson.MIDDLENAME#</td>
                </tr>
            </cfoutput>
        </table>
	</cfif>
</span>