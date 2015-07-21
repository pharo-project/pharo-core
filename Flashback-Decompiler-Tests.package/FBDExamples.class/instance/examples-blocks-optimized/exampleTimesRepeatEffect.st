exampleTimesRepeatEffect
	| foo |
	foo := 1.
	5 timesRepeat: [ foo := foo + 3 ] . 
	^ foo