initLaraCroft
	| form scale |
	form := self laraPictureImage .
	scale := form height / self defaultExtent y.
	^ form scaledToSize: (form height / scale) @ (form width / scale)