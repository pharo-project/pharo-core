downloadIssueSummary
	| title |

	
	title := ZnClient new
		url: 'http://bugs.pharo.org/issues/name/', self issueIdString;
		enforceHttpSuccess:true;
		ifFail:[:ex | ^ self informFailedWith: ex];
		get.

	self info issueSummary: title