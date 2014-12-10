spotterStfxFor: aStep
	<spotterOrder: 30>
	| processor |
	processor := aStep listProcessor.
	processor 
		title: 'ws.stfx.eu';
		filter: [ :originalQuery :stream |
			| aCollection query |
			aCollection := OrderedCollection  new.
			query := originalQuery trimBoth.
			(query beginsWith: 'http://ws.stfx.eu') ifTrue: [ 
				[| string page |
				string := GTUrlProvider new get: query.
				page := GTPlayPage new content: string.
				stream addObject: page inProcessor: processor.
				aCollection add: page] on: Error do: [ "nothing" ] ].
			aCollection ].
	^ processor