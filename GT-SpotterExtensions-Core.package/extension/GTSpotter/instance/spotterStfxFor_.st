spotterStfxFor: aStep
	<spotterOrder: 30>
	^ aStep listProcessor
		title: 'ws.stfx.eu';
		filter: [ :context |
			| aCollection query |
			aCollection := OrderedCollection  new.
			query := context textTrimmed.
			(query beginsWith: 'http://ws.stfx.eu') ifTrue: [ 
				[| string page |
				string := GTUrlProvider new get: query.
				page := GTPlayPage new content: string.
				context addItem: page.
				aCollection add: page] on: Error do: [ "nothing" ] ].
			aCollection ]