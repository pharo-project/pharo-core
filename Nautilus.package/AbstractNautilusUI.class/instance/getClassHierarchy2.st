private
getClassHierarchy2

	^ self selectedPackage
		ifNil: [{}]
		ifNotNil:[:package |
			cachedHierarchy := self buildPackageHierarchyFor: package.
			cachedHierarchy keys sort: [:a :b | self sortClassesInCachedHierarchy: a b: b]]