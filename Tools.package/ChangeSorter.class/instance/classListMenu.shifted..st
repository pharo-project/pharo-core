menu
classListMenu: aMenu shifted: shifted
	"Fill aMenu with items appropriate for the class list"

	aMenu title: 'Class list'.
	aMenu addStayUpItemSpecial.
	(parent notNil and: [shifted not])
		ifTrue: [aMenu addList: #( "These two only apply to dual change sorters"
			('Copy class chgs to other side'			copyClassToOther)	
			('Move class chgs to other side'			moveClassToOther))].

	aMenu addList: (shifted
		ifFalse: [#(
			-
			('Delete class from change set (d)'		forgetClass)
			('Remove class from system (x)'			removeClass)
			-
			('Browse full (b)'						browseMethodFull)
			('Browse hierarchy (h)'					spawnHierarchy)
			-
			('FileOut'								fileOutClass)
			-
			('Inst var refs...'						browseInstVarRefs)
			('Inst var defs...'						browseInstVarDefs)
			('Class var refs...'						browseClassVarRefs)
			('Class vars'								browseClassVariables)
			('Class refs (N)'							browseClassRefs)
			-
			('More...'								offerShiftedClassListMenu))]

		ifTrue: [#(
			-
			('Unsent methods'						browseUnusedMethods)
			('Unreferenced inst vars'				showUnreferencedInstVars)
			('Unreferenced class vars'				showUnreferencedClassVars)
			-
			('Inspect instances'						inspectInstances)
			('Inspect subinstances'					inspectSubInstances)
			-
			('More...'								offerUnshiftedClassListMenu ))]).
	^ aMenu