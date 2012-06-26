converting
withoutLeadingBlanks
	"Return a copy of the receiver from which leading blanks have been trimmed."

	self deprecated: 'Use #trimLeft' on: '20120108' in: '1.4'.
	^ self trimLeft
		
	" '    abc  d' withoutLeadingBlanks"
