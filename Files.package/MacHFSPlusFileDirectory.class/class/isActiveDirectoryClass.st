platform specific
isActiveDirectoryClass
	"Ok, lets see if we support HFS Plus file names, the long ones"

	^ (self pathNameDelimiter = self primPathNameDelimiter) and: [Smalltalk maxFilenameLength notNil and: [Smalltalk maxFilenameLength asNumber > 31]]