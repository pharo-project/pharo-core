as yet unclassified
discardDefault
"
	self discardDefault
"
	| ttc |
	ttc := TTCFontDescription default.
	ttc ifNotNil: [
		TextSharedInformation removeKey: ttc name asSymbol ifAbsent: [].
	].