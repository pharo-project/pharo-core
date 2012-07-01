protected
lightGlobalMappers

	^ globalSymbols isEmpty
		ifTrue: [#()]
		ifFalse: [Array with: (FLLightGlobalMapper for: globalSymbols)]