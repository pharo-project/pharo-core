gtInspectorContentsIn: composite
	<gtInspectorPresentationOrder: 5>
	composite rubricText
			title: 'Contents';
			display: [ 
				self readStreamDo: [ :stream | 
					| result |
					result := [(stream next: 10000) asString]
						on: Error 
						do: [ (stream binary next: 10000) asString ].
					stream size > 10000
						ifTrue: [ result, '  ... truncated ...' ]
						ifFalse: [ result ] ] ];
			withLineNumbers: true;
			when: [ self isFile ]