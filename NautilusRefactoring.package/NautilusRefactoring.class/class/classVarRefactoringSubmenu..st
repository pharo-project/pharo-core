menu
classVarRefactoringSubmenu: aBuilder
	<nautilusClassMenu>
	| target selectedClass |
	target := aBuilder model.
	selectedClass := target selectedClass.
	selectedClass ifNil: [ ^ target ].
	
	(aBuilder item: #'Add')
		action: [ target refactor addClassVarFrom: selectedClass ];
		parent: #'Class Var Refactoring';
		order: 0.
		
	(aBuilder item: #'Rename')
		action: [ target refactor renameClassVarFrom: selectedClass ];
		parent: #'Class Var Refactoring';
		order: 100.
	
	(aBuilder item: #'Remove')
		action: [ target refactor removeClassVarFrom: selectedClass ];
		parent: #'Class Var Refactoring';
		icon: (target iconClass iconNamed: #removeIcon);
		order: 200;
		withSeparatorAfter.
		
	(aBuilder item: #'Abstract')
		action: [ target refactor abstractClassVarFrom: selectedClass ];
		parent: #'Class Var Refactoring';
		order: 300.
	
	(aBuilder item: #'Accessors')
		action: [ target refactor accessorsClassVarFrom: selectedClass ];
		parent: #'Class Var Refactoring';
		order: 400.
		
	(aBuilder item: #'Pull up')
		action: [ target refactor pullUpClassVarFrom: selectedClass ];
		parent: #'Class Var Refactoring';
		order: 500.
	
	(aBuilder item: #'Push down')
		action: [ target refactor pushDownClassVarFrom: selectedClass ];
		parent: #'Class Var Refactoring';
		order: 600.