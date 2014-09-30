buttonCenterByIndex: aNumber isLeft: isLeft
	|button|
	button := indicatorButtons at: aNumber.
	^ isLeft ifTrue: [ button right ]
				ifFalse: [ button left ]