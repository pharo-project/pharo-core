addDiveInButton
	
	diveInButton := self newActionbarButton.
	self diveInButton
		icon: self themer spotterThemer iconDiveInCategory;
		pressedColor: (self themer spotterThemer itemActionSelectedBackgroundColor alpha: 0.5);
		addUpAction: [ self stepModel diveInCategory ];
		beHelp;
		hintTitle: 'Show all';
		hintText: '<cmd+shift+right>'.
		
	self pushActionButton: self diveInButton
	