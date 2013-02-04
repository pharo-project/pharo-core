morphic
iconFor: item at:  anIndex
	| icon |
	icon := NautilusIcons iconNamed: #testGreen.
	"^ icon"
	^  IconicButton new 
						target: self;
						actionSelector: #halt;
						labelGraphic: icon ;
						color: Color transparent;
						extent: 12 @ 12;
						helpText: 'Run the tests';
						borderWidth: 0.