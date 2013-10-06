switchToNextColumn
	"Give the next embedded menu keyboard focus."

	|menuWithFocus|
	(self choiceMenus isNil or: [self choiceMenus isEmpty]) ifTrue: [^self].
	menuWithFocus := self choiceMenus
		detect: [:m | m hasKeyboardFocus]
		ifNone: [].
	menuWithFocus isNil 
		ifFalse: [menuWithFocus navigateFocusForward].
	menuWithFocus := self choiceMenus
		detect: [:m | m hasKeyboardFocus]
		ifNone: [].
	menuWithFocus isNil 
		ifTrue: [self choiceMenus first takeKeyboardFocus]