setUpCodeIn: aComposite

	aComposite pharoMethod
		title: 'SetUp';
		format: [ self session setUpMethod sourceCode ];
		smalltalkClass: [  self session testObject class ];
		doItReceiver: [ self session testObject ].