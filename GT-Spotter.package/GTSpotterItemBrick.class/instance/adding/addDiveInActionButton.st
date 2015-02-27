addDiveInActionButton
		
	(self stepModel canDiveIn: self candidate) ifTrue: [
		self actionbarBrick addActionButton: (self newActionButtonBrick
			icon: self themer spotterThemer iconDiveIn;
			hintTitle: 'Dive in';
			hintText: '<cmd+right>';
			addUpAction: [ self beSelected. self stepModel diveIn ];
			yourself)]