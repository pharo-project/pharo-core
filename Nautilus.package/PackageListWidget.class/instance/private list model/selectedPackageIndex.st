selectedPackageIndex

	| item |
	item :=  self model
				ifGroups: [ self model selectedGroup ]
				ifNot: [ self model selectedPackage ].
				
	^self getPackagesList indexOf: item.