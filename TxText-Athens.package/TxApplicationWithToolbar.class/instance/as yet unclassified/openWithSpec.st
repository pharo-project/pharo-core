openWithSpec
	
	| old result |
	old := SpecInterpreter bindings.
	
	SpecInterpreter bindings: TxAdapterBindings new.
	
	[ result :=  super openWithSpec ]
	ensure: [ SpecInterpreter bindings: old ].
	^ result
	