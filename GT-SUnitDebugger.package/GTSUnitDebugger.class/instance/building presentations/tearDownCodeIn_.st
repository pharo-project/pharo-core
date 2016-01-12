tearDownCodeIn: aComposite

	aComposite pharoMethod
		title: 'TearDown';
		format: [ self session tearDownMethod sourceCode ];
		smalltalkClass: [  self session testObject class ];
		doItReceiver: [ self session testObject ].