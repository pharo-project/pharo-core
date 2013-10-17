assert: aBooleanOrBlock description: aString resumable: resumableBoolean 
	| exception |
	aBooleanOrBlock value
		ifFalse: 
			[self classForTestResult failure new
				isResumable: resumableBoolean;
				signal: aString]
			