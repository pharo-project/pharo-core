instance creation
named: aString
	"We force the creation of a PackageInfo to keep backward compatibility of tools"
	self flag: #hack.
	PackageInfo named: name.

	^self basicNew 
		initialize: aString;
		yourself