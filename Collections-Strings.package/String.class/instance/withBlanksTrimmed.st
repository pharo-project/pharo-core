converting
withBlanksTrimmed
	"Return a copy of the receiver from which leading and trailing blanks have been trimmed."

	self deprecated: 'Use #trimBoth' on: '20120108' in: '1.4'.
	^ self trimBoth

	" ' abc  d   ' withBlanksTrimmed"
