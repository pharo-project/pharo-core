doContinueFilterForProcessor: aGTProcessor
	" TODO: fix the hardcoded 95 = 100 [limit] - 5 [already generated] "
	" any limit above 100 is just insane ! Spotter needs a different kind of visualization canvas ... something like like lazy loading "
	self processor: aGTProcessor.
	self filter: ((self cache at: #processorsAndFilters) at: aGTProcessor).
	self streamed: ((self cache at: #processorsAndStreamed) at: aGTProcessor).
	^ aGTProcessor withItemsLimit: 95 " = 100 - 5 " do: [ filter value: self ]