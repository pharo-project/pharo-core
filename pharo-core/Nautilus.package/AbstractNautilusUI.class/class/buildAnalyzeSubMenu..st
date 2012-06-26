menu
buildAnalyzeSubMenu: aBuilder
	<nautilusClassMenu>
	| target |
	target := aBuilder model.
	target selectedClass ifNil: [^target].

	(aBuilder item: #'Inst var references...')
		action: [target browseInstVarRefs];
		parent: #Analyze;
		order: 0.

	(aBuilder item: #'Inst var assignments...')
		action: [target browseInstVarDefs];
		parent: #Analyze;
		order: 100.

	(aBuilder item: #'Create inst var accessors')
		action: [target createInstVarAccessors];
		parent: #Analyze;
		enabledBlock: [ target selectedClass instVarNames isEmpty not ];
		order: 200;
		withSeparatorAfter.
	
	(aBuilder item: #'Create initializer with inst vars...')
		action: [ target createInitializerWithInstVars ];
		parent: #Analyze;
		order: 300;
		enabledBlock: [ target showInstance ].
	
	(aBuilder item: #'Generate initialize method (I)')
		action: [ target generateInitialize ];
		parent: #Analyze;
		order: 350.
		
	(aBuilder item: #'Force the generaton of the initialize method (K)')
		action: [ target forceGenerateInitialize ];
		parent: #Analyze;
		order: 375;
		enabledBlock: [ target showInstance ];
		withSeparatorAfter.

	(aBuilder item: #'Class var refs...')
		action: [target browseClassVarRefs];
		parent: #Analyze;
		order: 400.
		
	(aBuilder item: #'Class refs... (N)')
		action: [target browseClassRefs];
		parent: #Analyze;
		order: 500.
		
	(aBuilder item: #'Browse comment versions... (v)')
		action: [ target browseCommentVersionsOf: {target selectedClass} ];
		parent: #Analyze;
		order: 600;
		withSeparatorAfter.

	(target selectedClass inheritsFrom: SharedPool )
		ifTrue: [ 
			(aBuilder item: #'Shared Pool Users')
				action: [ target systemNavigation browseSharedPoolUsersOf: target selectedClass ];
				parent: #Analyze;
				enabledBlock: [ target enableSingleClassSelection ];
				order: 700].
		
		
	(aBuilder item: #'Unsent methods...')
		action: [target browseUnusedMethods.];
		parent: #Analyze;
		order: 800.
	
	(aBuilder item: #'Unreferenced inst vars...')
		action: [target showUnreferencedInstVars.];
		parent: #Analyze;
		order: 900.
		
	(aBuilder item: #'Unreferenced class vars...')
		action: [target showUnreferencedClassVars.];
		parent: #Analyze;
		order: 1000.