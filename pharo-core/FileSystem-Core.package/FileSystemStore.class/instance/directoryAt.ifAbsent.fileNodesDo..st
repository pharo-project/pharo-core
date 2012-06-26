abstract
directoryAt: aPath ifAbsent: absentBlock fileNodesDo: aBlock
	^ self 
		directoryAt: aPath 
		ifAbsent: absentBlock 
		nodesDo: [ :entry|
			(self basicIsFile: entry) 
				ifTrue: [ aBlock value: entry ]].