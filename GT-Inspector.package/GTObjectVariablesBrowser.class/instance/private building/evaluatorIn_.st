evaluatorIn: composite
	^ composite pharoPlayground
		doItReceiver: #yourself;
		display: [ :object | 
			String streamContents: [ :stream | 
				stream 
					nextPutAll: (self printStringOf: object);
					cr;
					nextPutAll: (GTSnippets snippetAt: object class)] ];
		onChangeOfPort: #text act: [ :text :object |
				GTSnippets 
					snippetAt: object class 
					put: (self stringWithoutInitialCommentFrom: text text asString) ];
		installDefaultSelectionActions