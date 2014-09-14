windowMenuOn: aBuilder
	<windowMenu>

	| closableLabel draggableLabel maximizeLabel |
	(aBuilder item: #'Close')
		action: [ aBuilder model closeBoxHit ];
		icon: self icons windowCloseForm;
		enabledBlock: [ aBuilder model allowedToClose ];
		withSeparatorAfter.
	(aBuilder item: #'About')
		action: [ aBuilder model showAbout ];
		icon: Smalltalk ui icons smallHelpIcon;
		withSeparatorAfter.
	(aBuilder item: #'Change title...')
		action: [ aBuilder model relabel ];
		withSeparatorAfter.
	(aBuilder item: #'Send to back')
		action: [ aBuilder model sendToBack ].
	(aBuilder item: #'Make next-to-topmost')
		action: [ aBuilder model makeSecondTopmost ];
		withSeparatorAfter.
	(aBuilder item: #'Create window group')
		action: [ aBuilder model createWindowGroup ];
		withSeparatorAfter.
	aBuilder model mustNotClose
	    ifFalse: [ closableLabel := #'Make unclosable' ]
	    ifTrue: [ closableLabel := #'Make closable' ].
	(aBuilder item: closableLabel)
		action: [ aBuilder model perform: closableLabel asCamelCase uncapitalized ].
	draggableLabel := aBuilder model isSticky ifTrue: [#'Make draggable'] ifFalse: [#'Make undraggable'].
	(aBuilder item: draggableLabel)
		action: [ aBuilder model toggleStickiness ];
		withSeparatorAfter.
	maximizeLabel := aBuilder model isMaximized
	    ifTrue: [ #'Restore' ]
    	ifFalse: [ #'Maximize' ].
	(aBuilder item: maximizeLabel)
		action: [ aBuilder model expandBoxHit ];
		icon: self icons windowMaximizeForm.
	aBuilder model isCollapsed ifFalse: [
		(aBuilder item: #'Window color...')
			action: [ aBuilder model setWindowColor ] ].