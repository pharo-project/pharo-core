importing
import
	self flag: #fixme. "Ugly hack to parse preamble and postcript as a do it."
	((contents beginsWith: '"Change Set:') and: [ChangeSet current preambleString == nil])
		ifTrue: [ChangeSet current preambleString: contents].
	((contents beginsWith: '"Postscript:') and: [ChangeSet current postscriptString == nil])
		ifTrue: [ChangeSet current postscriptString: contents].

	^Compiler evaluate: contents logged: false.