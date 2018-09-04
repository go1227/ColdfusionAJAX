<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html>
<cfoutput>

<head>
	<title>Last name search using ajax with Coldfusion</title>

    <script src="getPersonByLastname.js"></script>

    <script language="javascript">
		function LTrim(inputVal) {
			if (inputVal==null) 
				return "";
			for (var i = 0; i < inputVal.length; i++)
				if (inputVal.charAt(i) != " ")
					return inputVal.substring(i,inputVal.length);
			return "";
		}
		function RTrim(inputVal) {
			if (inputVal==null) return "";
				for (var i = inputVal.length-1; i >= 0; i--)
					if (inputVal.charAt(i) != " ")
				return inputVal.substring(0,i+1);
			return "";
		}
		function SearchPerson() {
			if (LTrim(RTrim(document.MainForm.lname.value)).length >= 3) { 
				showLastNames(lname.value); 
			} else { 
				alert('The search tool requires at least three or more characters'); 
			}
		}
	</script>
</head>

<body>

<form name="MainForm" method="POST" action="main.cfm">

Search person by Last Name: <input type="text" name="lname" id="lname" value="">
<br>
<input type="button" value="Search" onClick="SearchPerson();">
<br>

<!--- Results will be displayed here --->
<div id="namesList"></div>

</form>

</body>
</cfoutput>
</html>