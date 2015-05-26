privateActionIcon
	"Return the icon for this action"
	"^ Smalltalk ui icons iconNamed: #traitRequiredMethodIcon"
	^ IconicButton new 
			target: method originMethod;
			actionSelector: #browse;
			labelGraphic: (Smalltalk ui icons iconNamed: #traitRequiredMethodIcon) ;
			color: Color transparent;
			extent: 12 @ 12;
			helpText: 'Browse the trait';
			borderWidth: 0