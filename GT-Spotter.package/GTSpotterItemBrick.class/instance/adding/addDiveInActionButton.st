addDiveInActionButton
		
	(self stepModel canDiveIn: self candidate) ifTrue: [
		self actionbarBrick addActionButton: (self newActionButtonBrick
			icon: self theme spotterWidgetThemer iconDiveIn;
			addUpAction: [ self beSelected. self stepModel diveIn ];
			yourself)]