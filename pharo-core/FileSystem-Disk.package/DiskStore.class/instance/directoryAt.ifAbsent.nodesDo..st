private
directoryAt: aPath ifAbsent: absentBlock nodesDo: aBlock
	| encodedPathString index entry pathString |
	index := 1.
	pathString := self stringFromPath: aPath.
	encodedPathString := Primitives encode: pathString.
	entry := Primitives lookupEntryIn: encodedPathString index: index.
	entry = #badDirectoryPath
		ifTrue: [ ^ absentBlock value ].
	[ entry isNil ]
		whileFalse: [ 
			entry at: 1 put: (Primitives decode: entry first).
			aBlock value: entry.
			index := index + 1.
			entry := Primitives lookupEntryIn: encodedPathString index: index ].
	^ self