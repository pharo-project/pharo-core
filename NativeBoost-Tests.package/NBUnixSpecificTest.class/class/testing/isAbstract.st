isAbstract
  	"only run test subclasses on Unix"

	^(self name = #NBUnixSpecificTest)
		or: [ OSPlatform isUnix not ]