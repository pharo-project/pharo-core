installing
installScript: aString
	| sel pi |
	sel := (self scriptSelector, ':') asSymbol.
	pi := self packageInfo.
	(pi respondsTo: sel)
		ifTrue: [pi perform: sel with: aString]