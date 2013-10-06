shiftedSourceCodeMenu: aBuilder
	<contextMenu>
	<nautilusGlobalSourceCodeMenu>
	| donorMenu items |
	
	items := OrderedCollection new.
	donorMenu := SmalltalkEditor shiftedYellowButtonMenu.
	donorMenu submorphs doWithIndex: [:each :index |
		(each isKindOf: MenuLineMorph)
			ifTrue: [ items last withSeparatorAfter ]
			ifFalse: [
				items add: ((aBuilder item: each contents asSymbol)
								keyText: each keyText;
								selector: each selector;
								target: each target;
								parent: #'Extended search...';
								arguments: each arguments;
								order: (index*100)).
				each icon ifNotNil: [:ic | items last icon: ic ]]].
	(items last: 2) doWithIndex: [:e :i | e order: (9998 + i) ]