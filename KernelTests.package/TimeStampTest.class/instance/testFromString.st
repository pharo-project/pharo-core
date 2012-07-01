Tests
testFromString
	"This should signal an exception in 3.6beta as Time>>fromString: does not exist."

	self should: [ timestamp = (self timestampClass fromString: '1-10-2000 11:55:00 am') ] 

