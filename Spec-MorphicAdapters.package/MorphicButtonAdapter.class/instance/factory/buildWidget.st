buildWidget
	
	| button | 
	button := PluggableButtonMorph
				on: self 
				getState: #state 
				action:  #action 
				label: #label 
				menu: nil. 	
	button 
		getEnabledSelector: #enabled ;
		getMenuSelector: #menu: ;
		hResizing: #spaceFill ;
		vResizing: #spaceFill ;
		askBeforeChanging: self askBeforeChanging ;
		setBalloonText: self model help ;
		dragEnabled: self dragEnabled;
		dropEnabled: self dropEnabled ;	
		eventHandler: (EventHandler new on: #keyStroke send: #keyStroke:fromMorph: to: self).
	^ button