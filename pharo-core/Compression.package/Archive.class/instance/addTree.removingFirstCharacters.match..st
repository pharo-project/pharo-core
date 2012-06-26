archive operations
addTree: aFileNameOrDirectory removingFirstCharacters: n match: aBlock
	| dir fullPath relativePath |
	dir := (aFileNameOrDirectory isString)
		ifTrue: [ aFileNameOrDirectory asFileReference ]
		ifFalse: [ aFileNameOrDirectory ].
	fullPath := dir pathName, dir slash.
	relativePath := fullPath copyFrom: n + 1 to: fullPath size.
	(dir entries select: [ :entry | aBlock value: entry])
		do: [ :ea | | fullName newMember |
		fullName := fullPath, ea name.
		newMember := ea isDirectory
				ifTrue: [ self memberClass newFromDirectory: fullName ]
				ifFalse: [ self memberClass newFromFile: fullName ].
		newMember localFileName: relativePath, ea name.
		self addMember: newMember.
		ea isDirectory ifTrue: [ self addTree: fullName removingFirstCharacters: n match: aBlock].
	].
