platform specific
makeRelative: path
	"Ensure that path looks like an relative path"
	^path first = self pathNameDelimiter
		ifTrue: [ path copyWithoutFirst ]
		ifFalse: [ path ]