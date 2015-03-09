addDiveInActionButton
			
	(self stepModel canDiveIn: self candidate) ifTrue: [
		diveInButton := (self newActionButtonBrick
			icon: self themer spotterThemer iconDiveIn;
			hintTitle: 'Dive in';
			hintText: '<cmd+right>';
			addUpAction: [ self owner beSelected. self stepModel diveIn ];
			yourself).
		
		self addActionButton: diveInButton ]