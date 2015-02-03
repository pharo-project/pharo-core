addActActionButton

	self actionbarBrick addActionButton: (self newActionButtonBrick
			icon: self themer spotterThemer iconAct;
			addUpAction: [ self beSelected. self stepModel act ];
			yourself)
		