open		
	| window |
	window := super open.
	
	self class environment at: #GTDebuggerEventCollector ifPresent: [ :eventCollector | 
		eventCollector new collectDataFrom: self ].
		
	^ window.