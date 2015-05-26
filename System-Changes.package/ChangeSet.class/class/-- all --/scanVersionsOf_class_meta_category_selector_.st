scanVersionsOf: aMethod class: aClass meta: isMeta category: aCategory selector: aSelector

	| changeRecords |
	changeRecords := OrderedCollection new.

	SourceFiles 
		changeRecordsFrom: aMethod sourcePointer
		className: aClass name
		isMeta: isMeta
		do: [ :changeRecord |
			changeRecords add: changeRecord ].
		
	^ changeRecords