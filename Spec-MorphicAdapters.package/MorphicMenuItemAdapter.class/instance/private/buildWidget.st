buildWidget
	| spec |
	
	spec := self autoRefresh
		ifTrue: [ self class autoRefreshSpec ]
		ifFalse: [ self class defaultSpec ].


	^ SpecInterpreter 
		private_interpretASpec: spec 
		model: self
		selector: nil