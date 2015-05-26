buildBrowseClassVarsButton

	^ ( PluggableThreePhaseButtonMorph on: self )
					actionSelector: #browseClassVars;
					stateSelector: #isAClassSelected ;
					onImage: (Smalltalk ui icons iconNamed: #classVarsSelectedIcon);
					offImage: (Smalltalk ui icons iconNamed: #classVarsUnselectedIcon);
					pressedImage: (Smalltalk ui icons iconNamed: #classVarsPressedIcon);	
					extent: 24@24;
					helpText: 'Show class variables';
					yourself.