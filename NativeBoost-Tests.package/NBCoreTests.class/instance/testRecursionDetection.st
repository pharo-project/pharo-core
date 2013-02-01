testing
testRecursionDetection

	| result |
	result := false.
	
	NBRecursionDetect in: #abc during: [
		result := (NBRecursionDetect signalForMethod: #abc ) 
			].

	self assert: result == true.
	
	result := (NBRecursionDetect signalForMethod: #abc ).
	self assert: result == false.

