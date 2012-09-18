testing
testErrorousSentence
	| sentence result |
	sentence := 'This is an engilsh sendence with probles.'.
	result := self checker check: sentence.
	self assert: result isCollection.
	self assert: result size = 3.
	self assert: (sentence copyFrom: result first first to: result first last) = 'engilsh'.
	self assert: (sentence copyFrom: result last first to: result last last) = 'probles'