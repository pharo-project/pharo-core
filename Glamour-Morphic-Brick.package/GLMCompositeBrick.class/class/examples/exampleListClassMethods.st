exampleListClassMethods
	<example: 'Phlowr list displaying a list '>
	|composite|
	
	composite := self new.
	composite list
		title: 'Methods of Object';
		display: #yourself;
		format: [ :compiledMethod | compiledMethod gtDisplayString ];
		styled: [ :brick | brick height: 30 ];
		entity: Object methods.
	
	composite asBrickedMorph
		extent: 600@400;
		openInWindow