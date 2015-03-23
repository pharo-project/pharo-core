spotterPreviewArrowWidgetStyleFor: aBrick

	aBrick owner isTriangleVisible
		ifTrue: [ aBrick color: self previewArrowColor ]
		ifFalse: [ aBrick color: Color transparent ]