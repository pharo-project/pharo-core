public access
translate: aStream noPattern: noPattern ifFail: failBlock parser: parser
	| tree |
	tree := parser
			parse: aStream
			class: class
			noPattern: noPattern
			context: context
			notifying: requestor
			ifFail: [^ failBlock value].
	^ tree