<cfif #form.conversionType# is "CtoF">
    <cfinvoke component="convertTemp" method="ctof" returnvariable="newtemp" temp=#form.temperature#>
        <cfoutput>#form.temperature# degrees Celsius is #newtemp# degrees Farenheit.</cfoutput>
    <cfelseif #form.conversionType# is "FtoC">
        <cfinvoke component="convertTemp" method="ftoc" returnvariable="newtemp" temp=#form.temperature#>
    <cfoutput>#form.temperature# degrees Fahrenheit is #newtemp# degrees Celsius.</cfoutput>
</cfif>
