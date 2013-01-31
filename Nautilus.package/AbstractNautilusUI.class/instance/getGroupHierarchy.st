private
getGroupHierarchy

	^ self selectedGroup 
		ifNil: [ {} ]
		ifNotNil: [:group |
			cachedHierarchy := self buildGroupHierarchyFor: group.
			cachedHierarchy keys sort: [:a :b | self sortClassesInCachedHierarchy: a b: b]]