menu
elementsMenu: aBuilder
	<nautilusMethodMenu>
	| selectedMethods selectedMethod tmp target |
	target := aBuilder model.
	selectedMethods := target selectedMethods.
	selectedMethod := target selectedMethod.
	(aBuilder item: #'Find Method... (f)')
		action: [ target findMethod ];
		order: 0;
		help: 'Search for a method by name'.
	
	target selectedMethod ifNotNil: [ 
		(aBuilder item: #'ToggleBreakPoint')
			action: [ target toggleBreakPoint ];
			order: 199;
			label: (selectedMethod hasBreakpoint
					ifFalse: [ 'Add breakpoint']
					ifTrue: [ 'Remove breakpoint'] )].
		
	tmp := ((aBuilder item: #'Browse full (b)')
		action: [ target fullBrowse ];
		order: 200;
		yourself).
		
	target selectedMethod ifNil: [
		tmp withSeparatorAfter.
		 ^ target ].
	
	(aBuilder item: #'Generate test and jump (j)')
		action: [ target generateTestMethodsAndFocus: true ];
		order: 300.
		
	(aBuilder item: #'Generate test (J)')
		action: [ target generateTestMethodsAndFocus: false ];
		order: 400;
		withSeparatorAfter.
		
	(target selectedMethods allSatisfy: [:meth | meth isTestMethod ])
		ifTrue: [
			(aBuilder item: #'Run tests (t)')
				action: [ target runTestForMethods: selectedMethods notifying: true ];
				order: 1000 ].
			
	target selectedMethod correspondingTestMethod notNil
		ifTrue: [
			(aBuilder item: #'Debug tests (d)')
				action: [ target debugTest ];
				order: 1001 ].		
	
	(aBuilder item: #'Senders of...(n)')
		action: [ target browseSendersOfMessages ];
		order: 1100;
		enabledBlock: [ target enableMethodSingleSelection ].
		
	(aBuilder item: #'Implementors of... (m)')
		action: [ target browseMessages ];
		order: 1200;
		enabledBlock: [ target enableMethodSingleSelection ].
		
	(aBuilder item: #'Inheritance (i)')
		action: [ target methodHierarchy ];
		order: 1300;
		enabledBlock: [ target enableMethodSingleSelection ].
		
	(aBuilder item: #'Versions (v)')
		action: [ target browseVersions ];
		order: 1400;
		enabledBlock: [ target enableMethodSingleSelection ];
		withSeparatorAfter.
	
	(aBuilder item: #'Categorize method (C)')
		action: [ target categorizeMethod ];
		order: 1500.
		
	(aBuilder item: #'Move to package...')
		action: [ target moveMethodToPackage ];
		order: 1600.
		
	(aBuilder item: #'Remove... (x)')
		action: [ target removeMethods ];
		order: 1700;
		icon: (target iconClass iconNamed: #removeIcon);
		withSeparatorAfter.
		
	(aBuilder item: #'Add in group.. (e)')
		action: [ target addMethodsInGroup ];
		order: 1800.
			
	(aBuilder item: #'File Out')
		action: [ target fileOutMethods ];
		order: 1900