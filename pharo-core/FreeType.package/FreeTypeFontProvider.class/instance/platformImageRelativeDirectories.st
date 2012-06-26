file paths
platformImageRelativeDirectories
	
	| answer path |
	answer := OrderedCollection new.
	(path :=  Smalltalk imagePath)
		ifNotEmpty: [ | fontDirectory |
			(fontDirectory := path asFileReference / 'Fonts') exists
				ifTrue: [answer addLast: fontDirectory]].
	^answer