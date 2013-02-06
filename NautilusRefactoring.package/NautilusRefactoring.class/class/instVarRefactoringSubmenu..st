menu
instVarRefactoringSubmenu: aBuilder
	<nautilusGlobalClassMenu>
	| target selectedClass |
	
	target := aBuilder model.
	selectedClass := target selectedClass.
	selectedClass ifNil: [^target].
	
	(aBuilder item: #'Add')
		action: [ target refactor addInstVarFrom: selectedClass ];
		parent: #'Inst Var Refactoring';
		order: 0.
		
	(aBuilder item: #'Rename')
		action: [ target refactor renameInstVarFrom: selectedClass ];
		parent: #'Inst Var Refactoring';
		order: 100.
	
	(aBuilder item: #'Remove')
		action: [ target refactor removeInstVarFrom: selectedClass ];
		parent: #'Inst Var Refactoring';
		icon: (target iconClass iconNamed: #removeIcon);
		order: 200;
		withSeparatorAfter.
		
	(aBuilder item: #'Abstract')
		action: [ target refactor abstractInstVarFrom: selectedClass ];
		parent: #'Inst Var Refactoring';
		order: 300.
	
	(aBuilder item: #'Accessors')
		action: [ target refactor accessorsInstVarFrom: selectedClass ];
		parent: #'Inst Var Refactoring';
		order: 400.
		
	(aBuilder item: #'Pull up')
		action: [ target refactor pullUpInstVarFrom: selectedClass ];
		parent: #'Inst Var Refactoring';
		order: 500.
	
	(aBuilder item: #'Push down')
		action: [ target refactor pushDownInstVarFrom: selectedClass ];
		parent: #'Inst Var Refactoring';
		order: 600.