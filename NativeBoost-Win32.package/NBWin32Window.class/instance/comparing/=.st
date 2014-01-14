= anotherNBWin32Window 
	"Compare using the external give handle"
	
	^self species = anotherNBWin32Window species
		and: [ handle = anotherNBWin32Window handle ]