newDefaultSettings
	"Answer a new original default settings."

	^super newDefaultSettings
		autoSelectionColor: false;
		windowColor:  (Color r: 0.675 g: 0.76 b: 0.838);
		selectionColor: (Color r: 62 g: 142 b: 220 range: 255);
		buttonColor: Color black;
		scrollbarColor: Color black;
		progressBarProgressColor: (Color r: 0.544 g: 0.819 b: 0.09);
		yourself