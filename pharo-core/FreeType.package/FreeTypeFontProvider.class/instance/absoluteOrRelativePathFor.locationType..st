file paths
absoluteOrRelativePathFor: absolutePath locationType: aSymbol
	"answer a relative path from an absolute path according to the location type aSymbol"
	| p |

	aSymbol = #absolute ifTrue: [^absolutePath].
	aSymbol = #imageRelative ifTrue: [p := Smalltalk imagePath].
	aSymbol = #vmRelative ifTrue: [p := Smalltalk vmPath].
	(p notNil and: [absolutePath asLowercase beginsWith: p asLowercase])
		ifTrue: [^absolutePath copyFrom: p size + 1 to: absolutePath size].
	^absolutePath
	
	
	
			
	
	