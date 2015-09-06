addStayUpIcons
	"Add the titlebar with buttons."
	
	|title closeBox pinBox titleBarArea titleString|
	title := submorphs
		detect: [:ea | ea hasProperty: #titleString]
		ifNone: [self setProperty: #needsTitlebarWidgets toValue: true.
				^self].
			
	closeBox := self newTitleIconCalling: #delete form: self theme menuCloseForm helpText: 'Close this menu'.
	pinBox := self newTitleIconCalling: #pinboxClicked form: self theme menuPinForm helpText: 'Keep this menu up'.
	
	titleBarArea := AlignmentMorph newRow vResizing: #shrinkWrap;
		layoutInset: 2;
		color: title color;
		addMorphBack: closeBox;
		addMorphBack: title;
		addMorphBack: pinBox.
		
	title color: Color transparent.
	titleString := title
		findDeepSubmorphThat: [:each | each respondsTo: #font:]
		ifAbsent: []. "<-- this should be revisited"
	titleString font: StandardFonts windowTitleFont.
	self theme currentSettings preferRoundCorner ifTrue: [
		titleBarArea
			roundedCorners: #(1 4);
			useRoundedCorners].
	self addMorphFront: titleBarArea.
	titleBarArea
		setProperty: #titleString
		toValue: (title valueOfProperty: #titleString).
	title removeProperty: #titleString.
	self setProperty: #hasTitlebarWidgets toValue: true.
	self removeProperty: #needsTitlebarWidgets.
	self removeStayUpItems