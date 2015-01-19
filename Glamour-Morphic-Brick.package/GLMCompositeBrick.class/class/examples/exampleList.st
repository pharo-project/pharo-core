exampleList
	<example: 'Phlowr simple list'>
	|composite|
	
	composite := self new.
	composite list
		title: 'Example';
		display: [ :x | x + 3 ];
		format: [ :anInteger | anInteger asString, ')' ];
		entity: (1 to: 100).
	
	composite asBrickedMorph
		extent: 600@400;
		openInWindow