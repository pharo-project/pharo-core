buildNautilusWindow
	| nautilusUI nautilusWindow |

	nautilusUI := nautilus uiClass on: nautilus.
	nautilus instVarNamed: 'ui' put: nautilusUI.
	nautilusWindow := NautilusWindow new model: nautilusUI.
	nautilusUI 
		addAll: nautilusWindow;
		window: nautilusWindow;
		setWindowTitle.
	^ nautilusWindow