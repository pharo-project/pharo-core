rubricSettingsOn: aBuilder
	<systemsettings>
	(aBuilder group: #Rubric)
		label: 'Rubric editor';
		with: [ 
					(aBuilder setting: #editorFont)
						target: self;
						description: 'The default editor font' translated;
						label: 'Font' translated.
					(aBuilder setting: #backgroundColor)
						target: self;
						description: 'The default editor background color' translated;
						label: 'Background' translated.
					(aBuilder setting: #textColor)
						target: self;
						description: 'The default editor text color' translated;
						label: 'Text color' translated.
					(aBuilder group: #LineNumbers)
						target: self;
						label: 'Line numbers' translated;
						description: 'line numbers settings' translated;
						with: [ 
									(aBuilder setting: #lineNumbersFont)
										target: self;
										description: 'Font used for line numbers' translated;
										label: 'Line numbers font' translated.
									(aBuilder setting: #lineNumbersTextColor)
										target: self;
										description: 'Color used for line numbers' translated;
										label: 'Line numbers color' translated.
									(aBuilder setting: #lineNumbersBackgroundColor)
										target: self;
										description: 'Color used for line numbers background' translated;
										label: 'Line numbers background color' translated ] ]