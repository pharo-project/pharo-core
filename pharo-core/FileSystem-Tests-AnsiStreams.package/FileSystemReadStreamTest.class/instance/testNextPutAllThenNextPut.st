tests
testNextPutAllThenNextPut

	| sourceArray loadedArray serializer materializer |

	stream := filesystem writeStreamOn: 'griffle'.
	stream nextPutAll: 'xxx' asByteArray.
	stream nextPut: 42.
	stream close. 

	stream := filesystem readStreamOn: 'griffle'.
	self assert: (stream next: 3) asString = 'xxx'.
	self assert: stream next  = 42.