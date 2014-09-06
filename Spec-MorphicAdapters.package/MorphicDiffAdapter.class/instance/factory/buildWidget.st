buildWidget

	^ DiffMorph new  
		on: self ;
		from: self leftText to: self rightText contextClass: self contextClass;
		 hResizing:	#spaceFill;
		vResizing: #spaceFill;
		setBalloonText: self  help;
		showOptions: self showOptions;
		showOnlyDestination: self showOnlyDestination;
		eventHandler: (EventHandler new on: #keyStroke send: #keyStroke:fromMorph: to: self);
		yourself