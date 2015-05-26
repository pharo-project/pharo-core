testFindLastNotIn

	| result |
	
	 result:=self empty findFirst: [:each | true].
	
	self assert: result=0. 