evaluatorIn: composite
	^ composite pharoPlayground
		doItReceiver: #yourself;
		display: [ :object | 
			String streamContents: [ :stream | 
				stream 
					nextPutAll: (self printStringOf: object);
					cr;
					nextPutAll: (GTSnippets snippetAt: object class)] ];
		selectionAct: [ :text :object |
				GTSnippets snippetAt: object class put: (self stringWithoutInitialCommentFrom: text text asString).
				text evaluateSelectionAndDo: [ :result | text selection: result ] ]
			on: $o
			entitled: 'Do it and open (o)';
		installDefaultSelectionActions