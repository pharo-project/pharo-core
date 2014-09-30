render: aMagrittePresentation		.
	scrollPane := GeneralScrollPane new.
	scrollPane changeScrollerTableLayout.
	scrollPane scrollTarget: (self magritteMorphFrom: aMagrittePresentation).
	scrollPane layoutFrame: (LayoutFrame fractions: (0 @ 0 corner: 1 @ 1) offsets: (0 @ 25 corner: 0 @ 0)).

	aMagrittePresentation on: GLMPresentationUpdated send: #actOnPresentationUpdated: to: self.
	^ scrollPane