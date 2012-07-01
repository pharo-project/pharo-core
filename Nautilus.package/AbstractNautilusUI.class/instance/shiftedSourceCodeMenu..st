menus
shiftedSourceCodeMenu: aBuilder
	<nautilusSourceCodeMenu>
	| donorMenu items |
	items := OrderedCollection new.
	donorMenu := SmalltalkEditor shiftedYellowButtonMenu.
	donorMenu submorphs doWithIndex: [:each :order |
		(each isKindOf: MenuLineMorph)
			ifTrue: [ items last withSeparatorAfter ]
			ifFalse: [
				items add: ((aBuilder item: each contents asSymbol)
								selector: each selector;
								target: each target;
								parent: #'Extended search...';
								arguments: each arguments;
								order: order).
				each icon ifNotNil: [:ic | items last icon: ic ]]].
	(items last: 2) doWithIndex: [:e :i | e order: (9998 + i) ]