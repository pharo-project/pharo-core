platform specific
makeAbsolute: path
	"Ensure that path looks like an absolute path"
	| absolutePath |
	(self isAbsolute: path)
		ifTrue: [ ^path ].
	"If a path begins with a colon, it is relative."
	absolutePath := (path first = $:)
		ifTrue: [ path copyWithoutFirst ]
		ifFalse: [ path ].
	(self isAbsolute: absolutePath)
		ifTrue: [ ^absolutePath ].
	"Otherwise, if it contains a colon anywhere, it is absolute and the first component is the volume name."
	^absolutePath, ':'