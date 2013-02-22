protocol
beRadioButton
	"Change the images and round the border
	to be a radio button."

	self
		isRadioButton: true;
		onImage: self theme radioButtonMarkerForm;
		cornerStyle: (self theme radioButtonCornerStyleFor: self);
		borderStyle: self borderStyleToUse