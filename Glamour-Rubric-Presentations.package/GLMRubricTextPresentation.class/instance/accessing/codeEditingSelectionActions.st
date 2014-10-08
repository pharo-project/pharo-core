codeEditingSelectionActions

	^ { (GLMGenericAction new) 
				title: 'Copy';
				action: [ :aPresentation |
					aPresentation copySelection ]; 
				shortcut: $c; 
				yourself.
		(GLMGenericAction new) 
				title: 'Cut';
				action: [ :aPresentation |
					aPresentation cut ]; 
				shortcut: $x; 
				yourself.
		(GLMGenericAction new) 
				title: 'Paste';
				action: [ :aPresentation |
					aPresentation paste ]; 
				shortcut: $v; 
				yourself.
		(GLMGenericAction new) 
				title: 'Paste...';
				action: [ :aPresentation |
					aPresentation pasteRecent  ]; 
				withSeparatorAfter;
				yourself. }