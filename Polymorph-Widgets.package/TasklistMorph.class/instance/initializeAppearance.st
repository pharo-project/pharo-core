as yet unclassified
initializeAppearance
	"Initialize the appearance."

	self
		color: (Color black alpha: 0.15);
		fillStyle: (self theme tasklistFillStyleFor: self);
		borderStyle: (self theme taskbarThumbnailNormalBorderStyleFor: self);
		cornerStyle: (self theme taskbarThumbnailCornerStyleFor: self)