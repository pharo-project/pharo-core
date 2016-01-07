privateActionIcon
	"Return the icon for this action"
	^ IconicButton new
		target: self browser;
		actionSelector: #toggleBreakpoint;
		arguments: {};
		labelGraphic: (Smalltalk ui icons iconNamed: #haltIcon);
		color: Color transparent;
		helpText: 'remove breakpoint';
		extent: self iconExtent;
		borderWidth: 0