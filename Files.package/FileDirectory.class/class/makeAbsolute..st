platform specific
makeAbsolute: path
	"Ensure that path looks like an absolute path"
	^path first = self pathNameDelimiter
		ifTrue: [ path ]
		ifFalse: [ self slash, path ]