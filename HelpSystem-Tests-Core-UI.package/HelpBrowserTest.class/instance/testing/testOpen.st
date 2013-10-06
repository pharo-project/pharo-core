testOpen
	|block|
	block := [
		|browser|
		browser := self defaultTestClass open.
		World doOneCycleNow. 
		browser close ].
	self shouldnt: block raise: Error


		