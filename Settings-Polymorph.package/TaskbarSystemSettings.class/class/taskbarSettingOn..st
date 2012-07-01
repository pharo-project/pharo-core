settings
taskbarSettingOn: aBuilder
	<systemsettings>
	(aBuilder setting: #showTaskbar)
		target: TaskbarMorph;
		parent: #morphic;
		label: 'Taskbar' translated;
		description: 'Whether the world''s taskbar should be shown or not.' translated;
		with: [
			(aBuilder setting: #showWindowPreview)
				label: 'Window preview' translated;
				description: 'Whether the world''s taskbar buttons should show previews of the associated window while the mouse is over them.' translated
		]