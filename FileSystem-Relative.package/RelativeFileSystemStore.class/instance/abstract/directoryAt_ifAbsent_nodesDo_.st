directoryAt: aPath ifAbsent: absentBlock nodesDo: aBlock
	self store
		directoryAt: (self resolvePath: aPath) ifAbsent: absentBlock nodesDo: aBlock