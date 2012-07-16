printing
printOn: aStream
	super printOn: aStream.
	aStream << '(#' << self id asString << ': ' << self title asString << ')'