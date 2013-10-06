nextLineLf
	| nextLine |
	nextLine := self upToAll: String lf.
	^nextLine