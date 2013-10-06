tempNamed: aName put: aValue
	"This code permits temp to work in root context "
	
	^self temporaries at: aName put: aValue
		