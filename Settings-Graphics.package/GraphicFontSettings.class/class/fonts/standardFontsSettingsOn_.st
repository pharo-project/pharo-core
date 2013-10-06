standardFontsSettingsOn: aBuilder
	<systemsettings>
	(aBuilder group: #standardFonts)
		label: 'Standard fonts' translated;
		target: StandardFonts;
		dialog: [self fontSizeRow];
		parent: #appearance;
		order: 4;
		with: [ 
			(aBuilder setting: #defaultFont)
				order: 1;
				description: 'The default text font' translated;
				dialog: (MessageSend receiver: self selector: #resetAllFontToDefaultButton);
				label: 'Default' translated.
			(aBuilder setting: #codeFont) 
				description: 'The standard code font' translated;
				label: 'Code' translated.
			(aBuilder setting: #listFont)
				description: 'The standard list font' translated;
				label: 'List' translated.
			(aBuilder setting: #menuFont)
				description: 'The standard menu font' translated;
				label: 'Menu' translated.
			(aBuilder setting: #buttonFont)
				description: 'The standard button font' translated;
				label: 'Button' translated.
			(aBuilder setting: #windowTitleFont)
				description: 'The standard window title font' translated;
				label: 'Window title' translated.
			(aBuilder setting: #balloonFont)
				description: 'The standard balloon-help font' translated;
				label: 'Balloon-help' translated.
			(aBuilder setting: #haloFont)
				description: 'The morphic halo font' translated;
				label: 'Morphic halo' translated]
				
				