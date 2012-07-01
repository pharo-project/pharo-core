event handling
mouseUp: evt
	imagePopupMorph ifNotNil: [
		imagePopupMorph delete	.
		 ]