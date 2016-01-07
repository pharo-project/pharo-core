privateActionIcon
	"Return the icon for this action"

	^ IconicButton new 
			target: method originMethod;
			actionSelector: #browse;
			labelGraphic: (Smalltalk ui icons iconNamed: #traitIcon) ;
			color: Color transparent;
			extent: self iconExtent;
			helpText: 'Browse the trait';
			borderWidth: 0