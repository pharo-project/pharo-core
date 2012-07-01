modal control
invokeModalAt: aPoint in: aWorld allowKeyboard: aBoolean
	"Invoke this menu and don't return until the user has chosen a value.
	See senders of this method for finding out how to use modal menu morphs."
	| w originalFocusHolder |
	originalFocusHolder := aWorld primaryHand keyboardFocus.
	self popUpAt: aPoint forHand: aWorld primaryHand in: aWorld allowKeyboard: aBoolean.
	self isModalInvokationDone: false.
	w := aWorld outermostWorldMorph. "containing hand"
	[self isInWorld & self isModalInvokationDone not] whileTrue: [w doOneSubCycle].
	self delete.
	originalFocusHolder ifNotNil: [aWorld primaryHand newKeyboardFocus: originalFocusHolder].
	^ self modalSelection