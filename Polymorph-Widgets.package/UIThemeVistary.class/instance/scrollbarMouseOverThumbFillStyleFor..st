fill-styles-scrollbars
scrollbarMouseOverThumbFillStyleFor: aScrollbar
	"Return the scrollbar mouse over thumb fillStyle for the given color."
	
	|aColor c cm cd cb selcol thumb grad offset|
	aColor := self scrollbarColorFor: aScrollbar.
	selcol := (self selectionColor adjustSaturation: 0.2 brightness: 0.5).
	c := aColor  alphaMixed: 0.1 with: Color white.
	cm := aColor alphaMixed: 0.5 with: selcol.
	cd := aColor alphaMixed: 0.9 with: Color black.
	cb := aColor alphaMixed: 0.3 with: (self selectionColor adjustSaturation: 0.7 brightness: 1.0) whiter.
	grad := (GradientFillStyle ramp: {0.0->c. 0.48->cm. 0.49->cd. 1.0->cb})
		origin: aScrollbar topLeft;
		direction: (aScrollbar bounds isWide
			ifTrue: [0 @ aScrollbar height]
			ifFalse: [aScrollbar width @ 0]);
		radial: false.
	aScrollbar bounds isWide
		ifTrue: [thumb := self hThumbForm.
				offset := thumb extent // 2 + (0@1)]
		ifFalse: [thumb := self vThumbForm.
				offset := thumb extent // 2 + (1@0)].
	^((aScrollbar slider bounds isWide and: [aScrollbar slider width > (thumb width * 2)]) or: [
			aScrollbar slider bounds isWide not and: [aScrollbar slider height > (thumb height * 2)]])
		ifTrue: [CompositeFillStyle fillStyles: {
				grad.
				(ImageFillStyle
					form: thumb)
					origin: aScrollbar slider bounds center - offset;
					direction: thumb width@0}]
		ifFalse: [grad]