settings
codeEditingSettingsOn: aBuilder 
	<systemsettings> 
	(aBuilder group: #codeEditing) 
		label: 'Editing' translated;
		parent: #codeBrowsing; 
		noOrdering;
		description: 'All settings concerned with text editing' translated;
		with: [	
			(aBuilder setting: #selectionColor)
				target: UITheme;
				targetSelector: #currentSettings;
				label: 'Selection color' translated.
			(aBuilder setting: #unfocusedSelectionColor)
				target: UITheme;
				targetSelector: #currentSettings;
				description: 'The color of the selection for unfocused windows' translated;
				label: 'Unfocused selection color' translated.
			(aBuilder setting: #selectionTextColor)
				target: UITheme;
				targetSelector: #currentSettings;
				label: 'Selection text color' translated;
				description: 'The color of the selection text' translated.
			(aBuilder setting: #useSelectionBar)
				target: TextEditor;
				label: 'Show the colored bar on the current line' translated;
				with: [
					(aBuilder setting: #selectionBarColor)
						target: UITheme;
						targetSelector: #currentSettings;
						label: 'Selection bar color' translated].
			(aBuilder setting: #useSecondarySelection)
				target: TextEditor;
				label: 'Use the secondary selection' translated;
				with: [
					(aBuilder setting: #secondarySelectionColor)
						target: UITheme;
						targetSelector: #currentSettings;
						label: 'Secondary selection color' translated.
					(aBuilder setting: #secondarySelectionTextColor)
						target: UITheme;
						targetSelector: #currentSettings;
						label: 'Secondary selection text color' translated].
			(aBuilder setting: #useFindReplaceSelection)
				target: TextEditor;
				label: 'Use the find and replace selection' translated;
				with: [
					(aBuilder setting: #findReplaceSelectionColor)
						target: UITheme;
						targetSelector: #currentSettings;
						label: 'Find replace selection color' translated.
					(aBuilder setting: #findReplaceSelectionTextColor)
						target: UITheme;
						targetSelector: #currentSettings;
						label: 'Find replace selection text color' translated].
			(aBuilder setting: #caseSensitiveFinds) 
				label: 'Case sensitive search' translated;
				target: TextEditor;
		 		description: 'If true, then the "find" command in text will always make its searches in a case-sensitive fashion' translated.
			(aBuilder setting: #blinkingCursor) 
				label: 'Blinking text cursor' translated;
				target: Editor;
		 		description: 'When true, the text cursor will blink.' translated.
			(aBuilder setting: #dumbbellCursor) 
				label: 'Dumbbell-shaped text cursor' translated;
				target: Editor;
		 		description: 'When true, the text cursor assumes the shape of a dumbbell, otherwise a vertical bar.' translated.
			(aBuilder setting: #walkAlongDisplayedLine) 
				label: 'Walk along displayed line' translated;
				target: TextEditor;
		 		description: 'If set to true cursor movement will move along displayed lines rather than logical lines' translated.
			(aBuilder setting: #smartUpdating)
				label: 'Smart updating' translated;
				target: CodeHolder;
				description: 'If true, then morphic tools such as browsers and inspectors will keep their contents up to date automatically, so that if something changes anywhere, the change will be reflected everywhere' translated.
		]
