gtInspectorContentsIn: composite
	<gtInspectorPresentationOrder: 40>
	self hasEntity
		ifTrue: [ 
			self contentType isBinary
				ifTrue: [ 
					composite table
						title: 'Contents';
						display: [ {'entity' -> self entity} ];
						column: 'Key' evaluated: #key;
						column: 'Value' evaluated: #value;
						send: #value ]
				ifFalse: [ 
					composite rubricText
						title: 'Contents';
						format: self contents ] ]