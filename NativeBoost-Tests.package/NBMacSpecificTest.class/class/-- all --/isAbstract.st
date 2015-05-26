isAbstract
  	"only run test subclasses on Mac"
	
	^(self name = #NBMacSpecificTest)
		or: [ OSPlatform isMacOS not ]