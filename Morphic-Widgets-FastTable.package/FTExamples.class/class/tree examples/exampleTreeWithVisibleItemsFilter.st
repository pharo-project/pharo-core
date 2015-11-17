exampleTreeWithVisibleItemsFilter
	<example>
	| ds |
	ds := FTTreeDataSource
		roots: (1 to: 1000)
		children: [ :item :roots :level | 
			level even
				ifTrue: [ 1 to: item / 2 ]
				ifFalse: [ 1 to: item - 1 ] ].
	ds searchStrategy: #default.	"Optional"
	FTTableMorph new
		extent: 200 @ 400;
		dataSource: ds;
		enableFilter;
		explicitFunction;
		openInWindow