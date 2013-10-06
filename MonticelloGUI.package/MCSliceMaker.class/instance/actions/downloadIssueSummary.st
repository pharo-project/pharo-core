downloadIssueSummary
	| title |

	
	title := ZnClient new
		url: 'http://bugs.pharo.org/issues/name/', self issueIdString;
		get.

	self info issueSummary: title