spotterPreviewCodeIn: aComposite
	<spotterPreview: 10>
	aComposite pharoMethod
		title: [ self gtDisplayString ];
		display: [:compiledMethod | 
			' ', compiledMethod getSource];
		smalltalkClass: #methodClass;
		entity: self.
		
	self flag: 'move "entity: self" somewhere else, maybe'