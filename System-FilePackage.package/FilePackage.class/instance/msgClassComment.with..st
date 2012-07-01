private
msgClassComment: string with: chgRec
	| tokens theClass |
	tokens := Scanner new scanTokens: string.
	(tokens size = 3 and:[(tokens at: 3) isString]) ifTrue:[
		theClass := self getClass: tokens first.
		^theClass commentString: tokens last].
	(tokens size = 4 and:[(tokens at: 3) asString = 'class' and:[(tokens at: 4) isString]]) ifTrue:[
		theClass := self getClass: tokens first.
		theClass metaClass commentString: tokens last].
