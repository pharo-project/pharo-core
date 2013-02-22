initialization
initialize
	"Initialization code for ComposableModel"

	super initialize.

	extentHolder := nil asValueHolder.
	needRebuild := true asValueHolder.
	keyStrokeForNextFocusHolder := KMNoShortcut new asValueHolder.
	keyStrokeForPreviousFocusHolder := KMNoShortcut new asValueHolder.
	additionalKeyBindings := Dictionary new.
	announcer := Announcer new asValueHolder.
	self initializeWidgets.
	self initializePresenter.
	
	keyStrokeForNextFocusHolder whenChangedDo: [:shortcut | self on: shortcut do: [ self giveFocusToNextFrom: self widget ]].
	keyStrokeForPreviousFocusHolder whenChangedDo: [:shortcut | self on: shortcut do: [ self giveFocusToPreviousFrom: self widget ]].