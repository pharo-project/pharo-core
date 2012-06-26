border-styles
taskbarThumbnailNormalBorderStyleFor: aWindow
	"Return the normal thumbnail borderStyle for the given button."

	^BorderStyle simple
		width: 1;
		baseColor: self settings menuColor