<cfscript>


	greetingArray = arrayNew(1);
	arrayAppend(greetingArray, "Hello World");
	arrayAppend(greetingArray, "Hellou Wourld"); //For those who like to add unnecessary U's
	arrayAppend(greetingArray, "Hola Mundo");
	arrayAppend(greetingArray, "Bonjour tout le monde");
	arrayAppend(greetingArray, "Hallo Welt");


</cfscript>
   <cfscript>
          system = createObject( "java", "java.lang.System" );
          vcap_services_json = system.getenv( javaCast( "string", "VCAP_SERVICES" ) );
          vcap_credentials=deserializeJSON(vcap_services_json)["credhub"][1]["credentials"];
          connectionstring_var           = '#vcap_credentials["connectionstring"]#'
        </cfscript>
        <cfoutput>string: #connectionstring_var#</cfoutput>


<cfoutput>
	<ul>
	<cfloop array="#greetingArray#" index="greeting">
		<li>#greeting#</li>
	</cfloop>
	</ul>
</cfoutput>
