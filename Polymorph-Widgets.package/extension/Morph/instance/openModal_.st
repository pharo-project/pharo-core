openModal: aSystemWindow
	"Open the given window locking the receiver until it is dismissed.
	Answer the system window.
	Restore the original mouse and keyboard focus when closed."

	|area mySysWin keyboardFocus mouseFocus|
	mouseFocus := self activeHand mouseFocus.
	keyboardFocus := self activeHand keyboardFocus.
	mySysWin := self isSystemWindow ifTrue: [self] ifFalse: [self ownerThatIsA: SystemWindow].
	mySysWin ifNil: [mySysWin := self].
	mySysWin modalLockTo: aSystemWindow.
	area := RealEstateAgent maximumUsableArea.
	aSystemWindow extent: aSystemWindow initialExtent.
	aSystemWindow position = (0@0)
		ifTrue: [aSystemWindow
				position: self activeHand position - (aSystemWindow extent // 2)].
	aSystemWindow
		bounds: (aSystemWindow bounds translatedToBeWithin: area).
	[ |aWidget | 
	aWidget := aSystemWindow openAsIs.
	self activeHand mouseFocus:aWidget.
	[aWidget world notNil] whileTrue: [
		aWidget outermostWorldMorph doOneCycle]]
		ensure: [mySysWin modalUnlockFrom: aSystemWindow.
				self activeHand newKeyboardFocus: keyboardFocus.
				self activeHand mouseFocus: mouseFocus].
	^aSystemWindow