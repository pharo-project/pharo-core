packageSelectionAt: anIndex 
	| elt |
	elt := self getPackagesList at: anIndex ifAbsent: [ ^ false ].
	^ (packagesSelection at: elt ifAbsent: [ false ]) == true