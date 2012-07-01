accessing
icon
	"Answer a form to be used as icon"
	^ Smalltalk tools objectExplorer showIcons
		ifTrue: [item iconOrThumbnailOfSize: 16]
		ifFalse: [nil]