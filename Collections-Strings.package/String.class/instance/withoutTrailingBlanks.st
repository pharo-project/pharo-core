converting
withoutTrailingBlanks
	"Return a copy of the receiver from which trailing blanks have been trimmed."

	self deprecated: 'Use #trimRight' on: '20120108' in: '1.4'.
	^ self trimRight
		
	" ' abc  d   ' withoutTrailingBlanks"
