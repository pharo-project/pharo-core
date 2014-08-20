mergeGroups: aCollection

	aCollection
		ifNotEmpty: [:groups || group |
			group := groups reduce: [:a :b | a or: [b]].
			groups do: [:gp | 
				gp removable
					ifTrue: [self groupsManager removeAGroupSilently: gp]].
				^ group].
	^ nil