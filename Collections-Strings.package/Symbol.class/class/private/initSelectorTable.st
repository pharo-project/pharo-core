initSelectorTable
	SelectorTable := WeakSet new.
	CompiledMethod allInstancesDo: [ :method | SelectorTable add: method selector ]