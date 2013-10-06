basicNamed: aString
	
	self flag: #hack. "We force the creation of a PackageInfo to keep backward compatibility of tools"
	PackageInfo named: aString.
	
	^ self basicNew 
		initialize: aString;
		yourself