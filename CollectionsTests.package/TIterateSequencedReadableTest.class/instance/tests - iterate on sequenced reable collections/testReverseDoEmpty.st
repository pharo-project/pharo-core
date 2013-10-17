testReverseDoEmpty
	| result |
	result:= OrderedCollection new.
	self empty reverseDo: [: each | result add: each].
	
	self assert: result isEmpty .