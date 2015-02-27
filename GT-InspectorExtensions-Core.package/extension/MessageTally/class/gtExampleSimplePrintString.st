gtExampleSimplePrintString
	<example: 'Simple printString'>
	^ MessageTally new 
		spyEvery: 1 on: [10 timesRepeat: [1.23 printString]];
		yourself