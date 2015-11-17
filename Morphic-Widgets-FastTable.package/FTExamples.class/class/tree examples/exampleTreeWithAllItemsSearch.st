exampleTreeWithAllItemsSearch
	<example>
	| ds |
	ds := FTTreeDataSource
		roots: (1 to: 10)
		children: [ :item :roots :level | 
			level even
				ifTrue: [ 1 to: item / 2 ]
				ifFalse: [ 1 to: item - 1 ] ].
	ds searchStrategies: #allItems.
	FTTableMorph new
		extent: 200 @ 400;
		dataSource: ds;
		explicitFunction;
		openInWindow