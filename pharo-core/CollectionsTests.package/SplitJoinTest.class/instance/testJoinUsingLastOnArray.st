running
testJoinUsingLastOnArray
	self assert: ((1 to: 4) joinUsing: ', ' last: ' and ')
		equals: '1, 2, 3 and 4'