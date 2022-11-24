<form action="processForm.cfm" method="POST">
    Enter the temperature:
    <input name="temperature" type="text"><br>
    <br>
    Select the type of conversion:<br>
    <select name="conversionType">
        <option value="CtoF">Celsius to Farenheit</option>
        <option value="FtoC">Farenheit to Celsius</option>
    </select><p>
    <input name="submitform" type="submit" value="Submit">
</form>
