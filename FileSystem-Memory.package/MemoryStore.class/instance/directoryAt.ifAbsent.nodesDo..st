private
directoryAt: aPath ifAbsent: absentBlock nodesDo: aBlock
	^ self
		nodeAt: aPath
		ifPresent: [ :entry | 
			entry isDirectory
				ifFalse: [ ^ absentBlock value ].
			entry fileEntriesDo: aBlock ]
		ifAbsent: absentBlock