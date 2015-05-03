mergeGroups: aCollection

	aCollection
		ifNotEmpty: [ :groups |
			| group |
			group := groups reduce: [ :a :b | a merge: b ].
			groups do: [ :gp | 
				gp removable
					ifTrue: [ self groupsManager removeAGroupSilently: gp ]].
				^ group].
	^ nil