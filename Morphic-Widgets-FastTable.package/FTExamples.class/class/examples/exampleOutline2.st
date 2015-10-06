exampleOutline2
	<example>
	| data list |
	data := OrderedCollection new.
	Morph allSubclassesDo: [ :each | data add: (each allSubclasses sorted: [ :a :b | a name < b name ]) ].
	list := FTOutlineTableMorph new
		extent: 300 @ 300;
		dataSource: (FTOutlineDataSource items: data).
	list openInWindow