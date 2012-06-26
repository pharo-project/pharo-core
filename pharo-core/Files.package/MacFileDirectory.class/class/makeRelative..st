platform specific
makeRelative: path
	"Ensure that path looks like an relative path"
	^path first = $:
		ifTrue: [ path ]
		ifFalse: [ ':', path ]