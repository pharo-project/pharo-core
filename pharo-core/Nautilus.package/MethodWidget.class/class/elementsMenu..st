menu
elementsMenu: aBuilder
	<nautilusMethodMenu>
	| selectedMethods selectedMethod tmp target |
	target := aBuilder model.
	selectedMethods := target selectedMethods.
	selectedMethod := target selectedMethod.
	(aBuilder item: #'Find Method... (f,m )')
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
		
	tmp := ((aBuilder item: #'Browse full (b, f)')
		action: [ target fullBrowse ];
		order: 200;
		yourself).
		
	target selectedMethod ifNil: [
		tmp withSeparatorAfter.
		 ^ target ].
	
	(aBuilder item: #'Generate test and jump (h, j)')
		action: [ target generateTestMethodsAndFocus: true ];
		order: 300.
		
	(aBuilder item: #'Generate test (h, J)')
		action: [ target generateTestMethodsAndFocus: false ];
		order: 400;
		withSeparatorAfter.
		
	(target selectedMethods allSatisfy: [:meth | meth isTestMethod ])
		ifTrue: [
			(aBuilder item: #'Run tests (j, m)')
				action: [ target runTestForMethods: selectedMethods notifying: true ];
				order: 1000 ].
			
	target selectedMethod correspondingTestMethod notNil
		ifTrue: [
			(aBuilder item: #'Debug tests (d)')
				action: [ target debugTest ];
				order: 1001 ].		
	
	(aBuilder item: #'Senders of...(b, n)')
		action: [ target browseSendersOfMessages ];
		order: 1100;
		enabledBlock: [ target enableMethodSingleSelection ].
		
	(aBuilder item: #'Implementors of... (b, m)')
		action: [ target browseMessages ];
		order: 1200;
		enabledBlock: [ target enableMethodSingleSelection ].
		
	(aBuilder item: #'Inheritance (b, i)')
		action: [ target methodHierarchy ];
		order: 1300;
		enabledBlock: [ target enableMethodSingleSelection ].
		
	(aBuilder item: #'Versions (b, v)')
		action: [ target browseVersions ];
		order: 1400;
		enabledBlock: [ target enableMethodSingleSelection ];
		withSeparatorAfter.
	
	(aBuilder item: #'Categorize method (m, m)')
		action: [ target categorizeMethod ];
		order: 1500.
		
	(aBuilder item: #'Move to package...')
		action: [ target moveMethodToPackage ];
		order: 1600.
		
	(aBuilder item: #'Remove... (x, m)')
		action: [ target removeMethods ];
		order: 1700;
		icon: (target iconClass iconNamed: #removeIcon);
		withSeparatorAfter.
		
	(aBuilder item: #'Add in group.. (n, e, m)')
		action: [ target addMethodsInGroup ];
		order: 1800.
			
	(aBuilder item: #'File Out')
		action: [ target fileOutMethods ];
		order: 1900