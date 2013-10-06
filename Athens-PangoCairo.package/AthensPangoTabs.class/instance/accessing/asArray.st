asArray
	| arr numberOfStops |
	numberOfStops := self primNumberOfStops.
	arr := Array new: numberOfStops.
	1 to:	numberOfStops do:[:i|
		|pair|
		pair := self primGetTabStopAt: i.
		arr at: i put: pair value]. 
	^ arr