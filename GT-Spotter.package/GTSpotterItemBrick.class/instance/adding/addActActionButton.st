addActActionButton

	self actionbarBrick addActionButton: (self newActionButtonBrick
			icon: self themer spotterThemer iconAct;
			hintTitle: 'Default action';
			hintText: '<enter>';
			addUpAction: [ self beSelected. self stepModel act ];
			yourself)
		