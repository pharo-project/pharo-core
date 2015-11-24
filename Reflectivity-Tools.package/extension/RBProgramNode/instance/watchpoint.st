watchpoint
	
	self hasWatchpoint ifFalse:[self error: 'No Watchpoint'].
	 
	^(self afterLinks detect: [ :link | link metaObject class = Watchpoint ]) metaObject