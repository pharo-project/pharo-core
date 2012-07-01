source code area
selectedClassComments

	^ self selectedClass
		ifNil: ['']
		ifNotNil: [:class| class comment]