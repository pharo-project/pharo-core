spotterImplementorsFor: aStep
	<spotterOrder: 30>
	aStep listProcessor
		title: 'Implementors';
		filter: [ :context | 
			GTImplementorsSpotter new
				context: context;
				behaviors: SystemNavigation default allBehaviors;
				find ]