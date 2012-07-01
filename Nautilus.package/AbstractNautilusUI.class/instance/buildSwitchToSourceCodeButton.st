items creation
buildSwitchToSourceCodeButton
	
	^ ( PluggableThreePhaseButtonMorph on: self )
					actionSelector: # switchToSourceCodeButton;
					stateSelector: #showSource ;
					onImage: (self iconClass iconNamed: #sourceSelectedIcon);
					offImage: (self iconClass iconNamed: #sourceUnselectedIcon);
					pressedImage: (self iconClass iconNamed: #sourcePressedIcon);	
					extent: 24@24;
					state: #on;
					helpText: 'Show source code';
					yourself.