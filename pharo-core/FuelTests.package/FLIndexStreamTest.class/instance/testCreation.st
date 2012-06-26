tests
testCreation

	self 
		shouldnt: [ self indexStreamOn: #() writeStream digits: 2 ]
		raise: Error.