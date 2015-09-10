addTitle: aString icon: aForm
	"Add a title line at the top of this menu."
	
	aForm ifNil: [ ^self addTitle: aString ].
	
	self buildTitle: [ :tm | tm 
		title: aString;
		icon: aForm
	].
	
	"title := AlignmentMorph newColumn.
	self setTitleParametersFor: title.	""
	aForm isNil
		ifTrue: [ titleContainer := title ]
		ifFalse: [ 
			| pair |
			pair := AlignmentMorph newRow.
			pair color: Color transparent.
			pair hResizing: #shrinkWrap.
			pair layoutInset: 0.	""
			pair addMorphBack: aForm asMorph.	""
			titleContainer := AlignmentMorph newColumn.
			titleContainer color: Color transparent.
			titleContainer vResizing: #shrinkWrap.
			titleContainer wrapCentering: #center.
			titleContainer cellPositioning: #topCenter.
			titleContainer layoutInset: 0.
			pair addMorphBack: titleContainer.	""
			title addMorphBack: pair ].	""


		aString asString
				linesDo: [ :line | titleContainer addMorphBack: (StringMorph contents: line font: StandardFonts menuFont) ].
		
	title setProperty: #titleString toValue: aString.
	self addMorphFront: title.	""
	title useSquareCorners.
	title on: #mouseDown send: #mouseDownInTitle: to: self.
	(self hasProperty: #needsTitlebarWidgets)
		ifTrue: [ self addStayUpIcons ]"