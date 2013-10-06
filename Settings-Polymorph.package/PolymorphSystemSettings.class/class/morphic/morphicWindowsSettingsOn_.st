morphicWindowsSettingsOn: aBuilder 
	(aBuilder group: #windows)
		label: 'Windows' translated;
		description: 'All windows settings' translated;
		noOrdering;
		with: [
			(aBuilder setting: #windowColor)
				target: UITheme;
				targetSelector: #currentSettings;
				label: 'Window color' translated;
				description: 'The window color' translated.
			(aBuilder setting: #preferRoundCorner)
				target: UITheme;
				targetSelector: #currentSettings;
				label: 'Rounded corners' translated;
				description: 'If true, then windows, menu and other popups will have their corners rounded.' translated.
			(aBuilder range: #fullscreenMargin) 
						target: SystemWindow;
						label: 'Fullscreen margin' translated;
						description: 'Specify the amount of space that is let around a windows when it''s opened fullscreen' translated;
						range: (-5 to: 100).
			(aBuilder setting: #fadedBackgroundWindows)
				target: UITheme;
				targetSelector: #currentSettings;
				label: 'Fade background windows' translated;
				description: 'If true then, background windows appear more "washed out" to distinguish from the active window' translated.
			(aBuilder setting: #fastDragging)
				target: UITheme;
				targetSelector: #currentSettings;
				label: 'Fast dragging' translated;
				description: 'If true, window drag will be done by dragging an outline of the window instead of the whole window. It is very convenient on a slow machine' translated.
			(aBuilder range: #textEntryFieldMinimumWidth)
				label: 'Text entry dialog width' translated;
				target: TextEntryDialogWindow;
				selector: #minimumWidth;
				range: (100 to: 800);
				description: 'Set the default text field width of the text entry dialog window' translated]
			
			
			
