isAbstract
  	"only run test subclasses on Windows"
	
	^(self name = #NBWin32SpecificTest)
		or: [ Smalltalk os isWin32 not ]