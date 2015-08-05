removeFromGroupPackages: aCollectionOfPackages
	| concernedGroups |
	concernedGroups := OrderedCollection new.
	self groupsManager groups
		do: [ :group | 
			(group packages includesAll: aCollectionOfPackages)
				ifTrue: [ concernedGroups add: group ] ].
	(DialogGroupRemover new
		groups: concernedGroups;
		elementsToRemove: aCollectionOfPackages) open