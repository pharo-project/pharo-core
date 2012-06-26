method version
versionOfAMethod: aMethodReference

	| tempList |
	tempList := self methodReferenceList select: [:each | 
		(each className = aMethodReference className) & 
		(each name = aMethodReference name)].
	tempList := tempList sort: [:m1 :m2 | m1 timeStamp < m2 timeStamp].
	^ tempList indexOf: aMethodReference ifAbsent: [0]