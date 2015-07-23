spotterPreviewCodeIn: aComposite
	<spotterPreview: 10>
	aComposite pharoMethod 
		title: [ self title ];
		display: [ target definition ];
		smalltalkClass: [ target isClass
			ifTrue: [ nil ]
			ifFalse: [ target methodClass ] ];
		entity: self.