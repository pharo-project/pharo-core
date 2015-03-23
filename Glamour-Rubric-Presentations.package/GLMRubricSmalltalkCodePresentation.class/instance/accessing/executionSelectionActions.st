executionSelectionActions

	^ { 
		(GLMGenericAction new) 
				title: 'Do it';
				action: [ :aPresentation |
					aPresentation highlightEvaluateAndDo: [ :result | ] ]; 
				shortcut: $d; 
				icon: GLMUIThemeExtraIcons glamorousSpawn;
				yourself.
		(GLMGenericAction new) 
				title: 'Print it';
				action: [ :aPresentation |
					aPresentation printSelection ]; 
				shortcut: $p; 
				yourself.
		(GLMGenericAction new) 
				title: 'Inspect it'; 
				action: [ :aPresentation |
					aPresentation highlightEvaluateAndDo: [ :result | result inspect ] ]; 
				shortcut: $i; 
				icon: GLMUIThemeExtraIcons glamorousInspect;
				yourself.
		(GLMGenericAction new) 
				title: 'Basic Inspect it'; 
				action: [ :aPresentation |
					aPresentation highlightEvaluateAndDo: [ :result | result basicInspect ] ]; 
				shortcut: $I; 
				icon: GLMUIThemeExtraIcons glamorousInspect;
				yourself.
		(GLMGenericAction new) 
				title: 'Debug it'; 
				action: [ :aPresentation |
					aPresentation debugSelection ]; 
				shortcut: $D;
				yourself.
		(GLMGenericAction new) 
				title: 'Profile it'; 
				action: [ :aPresentation |
					aPresentation profileSelection ]; 
				withSeparatorAfter;
				yourself.
		 }