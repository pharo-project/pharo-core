emitCaseOfOtherwise: aMessageNode

	| cases assocMessageNode  |
	
	cases := aMessageNode arguments first statements.
	cases ifEmpty: [ self backendError: 'At least one case required' forNode: aMessageNode ].
	valueTranslator visitNode: aMessageNode receiver.
	self emitAllButLastCases: cases.
	
	"last case with otherwise"
	assocMessageNode := cases last.
	valueTranslator visitInlinedBlockNode: assocMessageNode receiver.
	methodBuilder send: #=.
	methodBuilder jumpAheadTo: #next if: false.
	self visitInlinedBlockNode: assocMessageNode arguments first.
	methodBuilder jumpAheadTo: #end.
	methodBuilder jumpAheadTarget: #next.
	self visitInlinedBlockNode: aMessageNode arguments last.

	cases size timesRepeat: [methodBuilder jumpAheadTarget: #end].