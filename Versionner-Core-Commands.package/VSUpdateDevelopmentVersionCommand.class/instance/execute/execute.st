execute
	|  workflow |

	workflow := target.	
	self ensureDevelopmentVersionExists.
	self ensureDevelopmentVersionIsBaseline.
	
	workflow updateDevelopment
