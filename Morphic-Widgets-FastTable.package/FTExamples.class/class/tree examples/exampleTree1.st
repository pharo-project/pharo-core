exampleTree1
	<example>
	| ds |
	ds := FTTreeDataSource
		roots: ((ProtoObject allSubclasses sort: [ :a :b | a asString < b asString ]) reject: [ :e | e asString endsWith: 'class' ])
		children: [ :item | item subclasses sort: [ :a :b | a asString < b asString ] ].
	FTTableMorph new
		extent: 200 @ 400;
		dataSource: ds;
		openInWindow