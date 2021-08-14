<cfoutput>
 <cfscript>
  response = {
  	'statusCode' : "422",
  	'presidentSelected' : '0'
  };
  data = {
   'president' : {
     '41' : "H.W. Bush",
     '42' : "Bill Clinton",
     '43' : "George Bush",
     '44' : "Barrack Obama"
   }
  };
   if(structKeyExists(url, "presidentID")){
   	 response['presidentSelected'] = data.president[url.presidentID];
   	 response['statusCode'] = "200";
   }
  writeOutput(serializeJSON(response));
 </cfscript>
</cfoutput>
