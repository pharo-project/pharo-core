addActActionButton

	self actionbarBrick addActionButton: (self newActionButtonBrick
			icon: self theme spotterWidgetThemer iconAct;
			addUpAction: [ self beSelected. self stepModel act ];
			yourself)
		