gtInspectorUsersIn: composite
	<gtInspectorPresentationOrder: 30>
	composite list 	
		title: 'Users';
		when: [ self isTrait ];
		display: [ 
			Smalltalk allClasses select: [ :class |
			   class traitComposition traits includes: self ] ]