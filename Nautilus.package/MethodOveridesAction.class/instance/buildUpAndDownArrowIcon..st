private
buildUpAndDownArrowIcon: aMethod

	| container up down |
	
	container := Morph new.
	container 
		extent: 12@12;
		color: Color transparent.
		
	up := IconicButton new 
				target: self browser;
				actionSelector: #arrowUp:;
				arguments: { aMethod };
				labelGraphic: (self iconClass iconNamed: #arrowDoubleUp);
				color: Color transparent;
				extent: 12 @ 6;
				helpText: 'Browse overriden message';
				borderWidth: 0.
				
	down :=  IconicButton new 
				target: self browser;
				actionSelector: #arrowDown:;
				arguments: { aMethod };
				labelGraphic: (self iconClass iconNamed: #arrowDoubleDown);
				color: Color transparent;
				extent: 12 @ 6;
				helpText: 'Browse overriding messages';
				borderWidth: 0.
				
	^ (container
		changeTableLayout;
		listDirection: #topToBottom;
		addMorph: down;
		addMorph: up;
		yourself) -> {up. down}.