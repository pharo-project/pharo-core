as yet unclassified
setDefault
"
	self setDefault
"
	| tt |
	tt := TTCFontDescription default.
	tt ifNil: [TTCFontDescription setDefault].
	tt := TTCFontDescription default.
	tt ifNotNil: [self newTextStyleFromTT: tt].
