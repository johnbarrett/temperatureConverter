<!---<cfif #form.conversionType# is "CtoF">
    <cfinvoke component="convertTemp" method="ctof" returnvariable="newtemp" temp=#form.temperature#>
        <cfoutput>#form.temperature# degrees Celsius is #newtemp# degrees Farenheit.</cfoutput>
    <cfelseif #form.conversionType# is "FtoC">
        <cfinvoke component="convertTemp" method="ftoc" returnvariable="newtemp" temp=#form.temperature#>
    <cfoutput>#form.temperature# degrees Fahrenheit is #newtemp# degrees Celsius.</cfoutput>
</cfif>
--->

// if conversionType exists, the form was sent. Make sure temperature is a numeric value
    if( structKeyExists( form, 'conversionType') && isNumeric( form.temperature ) ) {
        conversionResult = new convertTemp.convert( direction=form.conversionType, temperature=form.temperature )

        writeOutput( '#form.temperature# degrees #conversionResult.from# is #conversionResult.newTemp# #conversionResult.to#.' );
    }