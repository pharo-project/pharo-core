exampleListWithCustomItem
	<example: 'Phlowr list with custom items'>
	|composite|
	
	composite := self new.
	composite list
		title: 'Example with custom items';
		display: [ :x | x + 3 ];
		format: [ :anInteger | anInteger asString ];
		styled: [ :aBrick | aBrick textPosition: #center; textColor: Color random ];
		entity: (1 to: 100).
	
	composite asBrickedMorph
		extent: 600@400;
		openInWindow