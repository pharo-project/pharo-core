nodeAt: aPath ifPresent: presentBlock ifAbsent: absentBlock
	^ self store
		nodeAt: (self resolvePath: aPath) 
		ifPresent: presentBlock
		ifAbsent: absentBlock