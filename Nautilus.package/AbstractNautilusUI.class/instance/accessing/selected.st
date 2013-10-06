selected

	| item |
	item :=  self 
				ifGroups: [ self selectedGroup ]
				ifNot: [ self selectedPackage ].
				
	^self getList indexOf: item.