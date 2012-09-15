testing
testEquality
	| global1 global2 |
	
	global1 := RGFactory current createGlobalVariableNamed: #Transcript.
	global2 := RGFactory current createGlobalVariableNamed: #Transcript.
	self assert: global1 = global2.
	
	global2 := RGFactory current createGlobalVariableNamed: #Transcript2.
	self deny: global1 = global2.