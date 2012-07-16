file paths
platformVMRelativeDirectories

	| answer path |
	answer := OrderedCollection new.
	(path :=  Smalltalk vm path)
		ifNotEmpty: [ | fontDirectory |
			(fontDirectory := path asFileReference / 'Fonts') exists
				ifTrue: [answer addLast: fontDirectory]].
	^answer