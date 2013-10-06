addStayUpIcons
	"Add the titlebar with buttons."
	
	|title closeBox pinBox titleBarArea titleString spacer1 spacer2|
	title := submorphs
		detect: [:ea | ea hasProperty: #titleString]
		ifNone: [self setProperty: #needsTitlebarWidgets toValue: true.
				^self].
	closeBox := IconicButton new target: self;
		actionSelector: #delete;
		labelGraphic: self theme menuCloseForm;
		color: Color transparent;
		extent: 18 @ 18;
		borderWidth: 0.
	pinBox := IconicButton new target: self;
		actionSelector: #stayUp:;
		arguments: {true};
		labelGraphic: self theme menuPinForm;
		color: Color transparent;
		extent: 18 @ 18;
		borderWidth: 0.
	closeBox setBalloonText: 'Close this menu' translated.
	pinBox setBalloonText: 'Keep this menu up' translated.
	spacer1 := AlignmentMorph newSpacer: Color transparent.
	spacer1 width: 14;
		 hResizing: #rigid.
	spacer2 := AlignmentMorph newSpacer: Color transparent.
	spacer2 width: 14;
		 hResizing: #rigid.
	titleBarArea := AlignmentMorph newRow vResizing: #shrinkWrap;
		layoutInset: 2;
		color: title color;
		addMorphBack: closeBox;
		addMorphBack: spacer1;
		addMorphBack: title;
		addMorphBack: spacer2;
		addMorphBack: pinBox.
	title color: Color transparent.
	titleString := title
		findDeepSubmorphThat: [:each | each respondsTo: #font:]
		ifAbsent: [].
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