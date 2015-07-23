uselessButtonFor: aCritic
	| button |
	button := IconicButton new.
	button
		target: self;
		actionSelector: #guardedReportUseless:andRemove:;
		arguments:
				{
				aCritic.
					button};
		helpText: 'Report this critic as a useless one';
		label: 'This is useless!';
		color: Color transparent;
		height: 14;
		borderWidth: 1;
		borderColor: Color veryLightGray.
	^ button