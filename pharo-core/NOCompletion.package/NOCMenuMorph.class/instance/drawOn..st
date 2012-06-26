as yet unclassified
drawOn: aCanvas 
	| rectangle model textColor |
	context model isEmpty ifTrue: [^self].
	
	"super drawOn: aCanvas."
	rectangle := self bounds copy.
	rectangle bottom: rectangle top + self class itemHeight.
	rectangle := rectangle left: rectangle left + 20.
	aCanvas fillRectangle: rectangle fillStyle: self fillStyle borderStyle: self borderStyle.
	model := context model.
	self extent: self extent.
	self firstVisible > 1
		ifTrue: [self drawTopScrollArrowOn: aCanvas].
	self lastVisible ~= self itemsCount
		ifTrue: [self drawBottomScrollArrowOn: aCanvas].
	model notEmpty
		ifTrue: [self firstVisible
				to: self lastVisible
				do: [:index | 
					| symbol type string | 
					symbol := model entries at: index.
					string := symbol contents.
					type := symbol type.
					textColor := self selectColor: type.
					index = self selected
						ifTrue: [| rect | 
							rect := rectangle withBottom: rectangle top + self class itemHeight.
							aCanvas fillRectangle: rect color: self class scrollColor.
							self detailPosition: rect topRight.
							textColor := Color white ].
					aCanvas
						drawString: string
						in: (rectangle insetBy: 1)
						font: (self selectFont: type)
						color: textColor.
					rectangle := self prepareRectForNextRow: rectangle]].
	self drawMessageOn: aCanvas in: rectangle