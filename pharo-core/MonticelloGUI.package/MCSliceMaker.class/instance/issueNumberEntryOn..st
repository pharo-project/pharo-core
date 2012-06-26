user interface
issueNumberEntryOn: canvas
	| issueNumberEntry |
	issueNumberEntry := canvas
				newAutoAcceptTextEntryFor: self info
				get: #issueNumber
				set: #issueNumber:
				class: String
				getEnabled: nil
				help: 'Google project issue number' translated.
	issueNumberEntry hResizing: #rigid.
	issueNumberEntry
		width: (StandardFonts defaultFont widthOfString: 'Issue number0').
	issueNumberEntry ghostText: 'Issue number'.
	^ issueNumberEntry