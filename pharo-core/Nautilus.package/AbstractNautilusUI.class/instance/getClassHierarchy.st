private
getClassHierarchy

	self hierarchyClass
		ifNil: [^self getClassesList].

	^ cachedHierarchy keys sort: [:a :b | self sortClassesInCachedHierarchy: a b: b].