buildContextInspectorFor: aDebugger

	^ PluggableTextMorph 
		on: aDebugger contextVariablesInspector
		text: #contents
		accept: #accept:
		readSelection: #contentsSelection
		menu: #codePaneMenu:shifted: