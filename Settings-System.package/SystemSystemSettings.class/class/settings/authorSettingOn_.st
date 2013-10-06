authorSettingOn: aBuilder
	<systemsettings>
	(aBuilder setting: #authorFullName)
		order: -100000;
		parent: #codeEditing;
		label: 'Author identification' translated;
		target: Author;
		getSelector: #fullName;
		setSelector: #fullName:;
		notInStyle;
		default: '';
		ghostHelp: 'VincentVanGogh';
		description: AuthorNameRequest messagePrompt
