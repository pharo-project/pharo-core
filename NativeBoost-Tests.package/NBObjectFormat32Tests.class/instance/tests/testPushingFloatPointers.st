testPushingFloatPointers

	self assert: (self getFloatPtrOffset: 10.0) =  NBObjectFormat current baseHeaderSize.
