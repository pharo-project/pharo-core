addTitle: aString icon: aForm updatingSelector: aSelector updateTarget: aTarget 
	"Add a title line at the top of this menu Make aString its initial  
	contents.  
	If aSelector is not nil, then periodically obtain fresh values for  
	its  
	contents by sending aSelector to aTarget.."
	
	"Overridden to support menu dragging from the title-bar"
	
	| title titleContainer |
	title := AlignmentMorph newColumn.
	self setTitleParametersFor: title.
	""
	aForm isNil
		ifTrue: [titleContainer := title]
		ifFalse: [| pair | 
			pair := AlignmentMorph newRow.
			pair color: Color transparent.
			pair hResizing: #shrinkWrap.
			pair layoutInset: 0.
			""
			pair addMorphBack: aForm asMorph.
			""
			titleContainer := AlignmentMorph newColumn.
			titleContainer color: Color transparent.
			titleContainer vResizing: #shrinkWrap.
			titleContainer wrapCentering: #center.
			titleContainer cellPositioning: #topCenter.
			titleContainer layoutInset: 0.
			pair addMorphBack: titleContainer.
			""
			title addMorphBack: pair].
	""
	aSelector
		ifNil: [""
			aString asString
				linesDo: [:line | titleContainer
						addMorphBack: (StringMorph contents: line font: StandardFonts menuFont)]]
		ifNotNil: [| stringMorph | 
			stringMorph := (aTarget perform: aSelector) asStringMorph.
			stringMorph font: StandardFonts menuFont.
			stringMorph lock.
			titleContainer addMorphBack: stringMorph].
	""
	title setProperty: #titleString toValue: aString.
	self addMorphFront: title.
	""
	title useSquareCorners.
	title on: #mouseDown send: #mouseDownInTitle: to: self.
	(self hasProperty: #needsTitlebarWidgets)
		ifTrue: [self addStayUpIcons]