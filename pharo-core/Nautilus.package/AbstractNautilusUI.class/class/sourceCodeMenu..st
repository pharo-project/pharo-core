menu
sourceCodeMenu: aBuilder
	<nautilusSourceCodeMenu>
	
	| donorMenu items |
	items := OrderedCollection new.
	donorMenu := SmalltalkEditor yellowButtonMenu.
	donorMenu submorphs doWithIndex: [:each :index |
		(each isKindOf: MenuLineMorph)
			ifTrue: [ items last withSeparatorAfter ]
			ifFalse: [
				items add: ((aBuilder item: each contents asSymbol)
								selector: each selector;
								target: each target;
								arguments: each arguments;
								order: (index*100)).
				each icon ifNotNil: [:ic | items last icon: ic ]]].
	(items last: 2) doWithIndex: [:e :i | e order: (9998 + i) ]