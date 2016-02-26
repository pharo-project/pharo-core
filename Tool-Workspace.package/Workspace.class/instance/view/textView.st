textView
	^ textView ifNil:[ textView := self createTextView]