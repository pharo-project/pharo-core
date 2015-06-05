materializeInstanceWith: aDecoder

	| inst wideSize |

	wideSize :=  aDecoder nextEncodedPositiveInteger.
	inst := theClass basicNew: wideSize.	

	aDecoder nextEncodedWordsInto: inst. 

	(aDecoder isBigEndian = EndianDetector isBigEndian asBit)
		ifTrue: [^ inst ]
		ifFalse: [ ^ self swapBytesOf: inst ] 
	