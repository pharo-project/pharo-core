user interface
issueSummaryOn: canvas
	| issueSummaryEntry |
	issueSummaryEntry := canvas window
				newAutoAcceptTextEntryFor: self info
				get: #issueSummary
				set: #issueSummary:
				class: String
				getEnabled: nil
				help: 'An identification label for the slice. Just copy-paste the Google issue Summary here' translated.
	issueSummaryEntry ghostText: 'Just paste the issue summary here'.
	^ issueSummaryEntry