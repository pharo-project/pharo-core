examplePharoMethod
	<example: 'Phlowr Pharo method'>
	|composite|
	
	composite := self new.
	composite pharoMethod
		title: #printString;
		display: #getSource;
		smalltalkClass: #methodClass;
		entity: Morph>>#bounds.
	
	composite asBrickedMorph
		extent: 600@400;
		openInWindow