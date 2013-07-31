actions
downloadIssueSummary
	"If the slice number is unknown, or for whatever failure, use a default summary."

	| title request |
	title := (request := ZnClient new)
		url: 'http://bugs.pharo.org/issues/name/' , self issueIdString;
		get.
	request isSuccess
		ifFalse: [ title := '-unable-to-get-summary-' ].
	self info issueSummary: title