rubricSettingsOn: aBuilder
	<systemsettings>
	(aBuilder group: #'Rubric cursor')
		parent: #Rubric;
		label: 'Cursor';
		with: [ 
					(aBuilder setting: #cursorWithFixedColor)
						target: self;
						label: 'Fixed color';
						with: [ 
									(aBuilder setting: #defaultColor)
										target: self;
										description: 'The cursolr color color' translated;
										label: 'Color' translated ].
					(aBuilder range: #defaultWidth)
						target: self;
						label: 'Width' translated;
						description: 'Specify the cursor width' translated;
						range: (1 to: 4).
					(aBuilder range: #period)
						target: self;
						label: 'Blinking period' translated;
						description:
								'Specify the cursor blinking period in milliseconds. If it is set to zero then the cursor will not blink' translated;
						range: (0 to: 1000) ]