list selections
listSelection2At: anIndex

	| elt |
	elt := self getList2 at: anIndex ifAbsent: [ ^false ].
	^ self listSelection2 at: elt ifAbsent: [ false ]