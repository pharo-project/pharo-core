measureWidth
	"Returns theoretical width of the morph. If label has no text returns current width"
	
	labelMorph ifNil: [ ^ self width ].

	^ (self geometry calculateExtent: ((self measureLabelWidthFor: self label text) @ (labelMorph height))) x