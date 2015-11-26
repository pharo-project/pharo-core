privateActionIcon
	"Return the icon for this action"
	^ IconicButton new
		target: self browser;
		actionSelector: #toggleBreakpoint;
		arguments: {};
		labelGraphic: (Smalltalk ui icons iconNamed: #haltIcon);
		color: Color transparent;
		helpText: 'remove breakpoint';
		extent: 12 @ 12;
		borderWidth: 0