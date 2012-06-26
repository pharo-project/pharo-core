user interface
issueSummaryDownloaderButtonOn: canvas
	|button|
	button := canvas newButtonFor:  self action: #downloadIssueSummary label: 'grab' help: 'Grab issue summary from tracker'.
	^ button 