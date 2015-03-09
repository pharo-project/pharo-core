addActActionButton

	actOnButton := (self newActionButtonBrick
			icon: self themer spotterThemer iconAct;
			hintTitle: 'Default action';
			hintText: '<enter>';
			addUpAction: [ self owner beSelected. self stepModel act ];
			yourself).

	self addActionButton: actOnButton.