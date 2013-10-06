menuItemInDockingBarSelectedFillStyleFor: aMenuItem
	"Answer the selected fill style to use for the given menu item that is in a docking bar."
	
	|c fill|
	Display depth <= 2 ifTrue: [^ Color gray].
	c := aMenuItem owner color isTransparent
		ifTrue: [aMenuItem paneColor darker]
		ifFalse: [aMenuItem owner color darker].
	fill := GradientFillStyle ramp: {
		0.0->Color white.
		0.2->c lighter.
		1.0->Color white}.
	fill origin: aMenuItem topLeft.
	aMenuItem owner isVertical
		ifTrue: [fill direction: aMenuItem width @ 0]
		ifFalse: [fill direction: 0 @ aMenuItem height].
	^ fill