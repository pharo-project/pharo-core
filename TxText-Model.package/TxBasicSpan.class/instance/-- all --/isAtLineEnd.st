isAtLineEnd
	^ self isAtEnd or: [ next isLineSeparator ]