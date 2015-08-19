loadTrackPadImage
	| value |
	value := ZnClient new url: 'https://www.apple.com/magictrackpad/images/desktop.jpg';
		method: 'GET';
		get.
	^(JPEGReadWriter on: (JPEGReadStream on: value)) nextImage.
	