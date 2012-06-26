menu commands
copyName
	"Copy the name of the current variable, so the user can paste it into the 
	window below and work with is. If collection, do (xxx at: 1)."
	| sel aClass variableNames |
	self selectionUnmodifiable
		ifTrue: [^ self changed: #flash].
	aClass := self object class.
	variableNames := aClass allInstVarNames.
	(aClass isVariable and: [selectionIndex > (variableNames size + 2)])
		ifTrue: [sel := '(self basicAt: ' , (selectionIndex - (variableNames size + 2)) asString , ')']
		ifFalse: [sel := variableNames at: selectionIndex - 2].
	(self selection isKindOf: Collection)
		ifTrue: [sel := '(' , sel , ' at: 1)'].
	Clipboard clipboardText: sel asText