settings
settingOn: aBuilder
	<systemsettings>
	(aBuilder group: #morphic)
		label: 'Morphic';
		with: [
			(aBuilder group: #progress)
				label: 'Progress' translated;
				with: [
					(aBuilder pickOne: #horizontalPosition)
							target: self;
							getSelector: #horizontalPosition;
							setSelector: #horizontalPosition:;
							label: 'Horizontal progress indicator position' translated;
							domainValues: {'left'->0. 'middle'->0.5. 'right'->1}.
							
					(aBuilder pickOne: #verticalPosition)
							target: self;
							getSelector: #verticalPosition;
							setSelector: #verticalPosition:;
							label: 'Vertical progress indicator position' translated;
							domainValues: {'bottom'->1. 'middle'->0.5. 'top'->0}]]