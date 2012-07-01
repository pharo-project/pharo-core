delegated
ifFile: fBlock ifDirectory: dBlock ifAbsent: aBlock
	^ self resolve 
		ifFile: fBlock ifDirectory: dBlock ifAbsent: aBlock