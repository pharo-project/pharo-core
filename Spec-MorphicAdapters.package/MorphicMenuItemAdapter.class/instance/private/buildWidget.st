buildWidget
	| spec |
	
	spec := self autoRefresh
		ifTrue: [ self class autoRefreshSpec ]
		ifFalse: [ self class defaultSpec ].


	^ SpecInterpreter interpretASpec: spec model: self