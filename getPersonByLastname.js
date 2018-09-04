var oXmlHttp

function showLastNames(str)
{
	var url="getPersonByLastname.cfm?&lname=" + str;
	oXmlHttp=GetHttpObject(stateChanged);
	oXmlHttp.open("GET", url , true);
	oXmlHttp.send(null);
}

function stateChanged()
{
	if (oXmlHttp.readyState==4 || oXmlHttp.readyState=="complete")
		document.getElementById("namesList").innerHTML=oXmlHttp.responseText;
}

function GetHttpObject(handler)
{
	try
	{
		var oRequester = new XMLHttpRequest();
			oRequester.onload=handler;
			oRequester.onerror=handler;
			return oRequester;
	}
	catch (error)
	{
		try
		{
			var oRequester = new ActiveXObject("Microsoft.XMLHTTP");
			oRequester.onreadystatechange=handler;
			return oRequester;
		}
		catch (error)
		{
			return false;
		}
	}
}