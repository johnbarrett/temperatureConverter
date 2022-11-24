component {
	
	//  Celsius to Fahrenheit conversion method. 
	public function ctof(required numeric temp) output=false {
		return ((temp*9)/5)+32;
	}
	//  Fahrenheit to Celsius conversion method. 
	public function ftoc(required numeric temp) output=false {
		return ((temp-32)*5/9);
	}

}
