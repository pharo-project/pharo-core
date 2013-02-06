settings
settingsOn: aBuilder
	<systemsettings>
	(aBuilder setting: #'Code Completion')
		target: self;
		parentName: #codeBrowsing;
		selector: #enabled;
		icon: UITheme current smallConfigurationIcon;
		description: 'Enable or disable code completion in browsers, debuggers and workspaces.';
		with: [ 
					| availableControllers |
					availableControllers := self availableControllers.
					availableControllers size > 1
						ifTrue: [ 
							(aBuilder pickOne: #completionController)
								order: -1;
								label: 'Controller' translated;
								getSelector: #currentController;
								setSelector: #useController:;
								domainValues: availableControllers ].
					(aBuilder setting: #backgroundColor)
						target: self;
						label: 'Background Color' translated.
					(aBuilder setting: #expandPrefixes)
						target: self;
						label: 'Complete common prefixes using TAB in the suggested completions' translated.
					(aBuilder setting: #useEnterToAccept)
						target: self;
						label: 'Use ENTER to accept a suggested completion' translated.
					(aBuilder setting: #captureNavigationKeys)
						target: self;
						label: 'Use navigation keys for extended completion functionality' translated.
					(aBuilder setting: #caseSensitive)
						label: 'Case Sensitive';
						description: 'Decide if you want eCompletion to be case sensitive or not.'.
					(aBuilder setting: #smartCharacters)
						label: 'Smart Characters';
						description: 'Decide if you want eCompletion to use smart characters, e.g, to automatically close brackets.'.
					(aBuilder setting: #popupShowAutomatic)
						default: self defaultPopupShowAutomatic;
						label: 'Popup is automatic'.
					(aBuilder setting: #popupAutomaticDelay)
						default: self defaultPopupDelay;
						label: 'Popup appearance delay'.
					(aBuilder pickOne: #popupShowWithShortcut)
						default: self defaultPopupShortcut;
						label: 'Popup appears with this shortcut' translated;
						domainValues: self availablePopupShortcuts.
					(aBuilder setting: #spaceAfterCompletion)
						default: self defaultSpaceAfterCompletion;
						label: 'Put a space after completion' ]