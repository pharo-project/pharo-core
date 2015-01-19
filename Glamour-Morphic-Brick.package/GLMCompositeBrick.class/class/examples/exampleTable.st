exampleTable
	<example: 'Phlowr table'>
	|composite|
	
	composite := self new.
	composite table
		title: #asString;
		display: [ :anObject | (anObject gtInspectorVariableValuePairs asSortedCollection asOrderedCollection yourself) addFirst: 'self' -> anObject; yourself ];
		column: 'Variable'
			evaluated: [:assoc |	GTObjectPrinter new asNonTruncatedTextFrom: assoc key ]
			styled: [ :aBrick | aBrick textPosition: #rightCenter; margin: #(0 15 0 0); textColor: Color lightGray ];
		column: 'Variable'
			evaluated: [:assoc | GTObjectPrinter new asTruncatedTextFrom: assoc value ]
			styled: [ :aBrick | aBrick margin: #(0 0 0 15) ];
		entity: Morph new.
	
	composite asBrickedMorph
		color: Color white;
		extent: 600@400;
		openInWindow