loadList2

	^ self 
		ifGroups: [
			self showHierarchy
				ifTrue: [ self getGroupHierarchy ]
				ifFalse: [ self getGroupsValuesList ]]
		ifNot: [
			self showPackages
				ifTrue: [		
					self showHierarchy
						ifTrue: [ self getClassHierarchy2 ]
						ifFalse: [ self getPackagesList2 ]]
				ifFalse: [
					cachedHierarchy
						ifNil: [ self getClassHierarchy ]
						ifNotNil: [:col | col sortedElements ]]]