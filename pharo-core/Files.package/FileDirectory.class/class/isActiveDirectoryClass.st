private
isActiveDirectoryClass
	"Does this class claim to be that properly active subclass of FileDirectory for this platform?
	Default test is whether the primPathNameDelimiter matches the one for this class. Other tests are possible"

	^self pathNameDelimiter = self primPathNameDelimiter
