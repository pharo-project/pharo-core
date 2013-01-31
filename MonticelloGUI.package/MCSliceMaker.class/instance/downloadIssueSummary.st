actions
downloadIssueSummary
	|page pageStream issueNumber summary|
	self flag: #TODO "replace by proper use of google API".
	issueNumber := self info issueNumber.
	ZnClient new
		systemPolicy;
		setAcceptEncodingGzip;
		accept: ZnMimeType textHtml;
		http;
		host: 'code.google.com';
		path: '/p/pharo/issues/detail';
		queryAt: 'id' put: issueNumber;
		contentReader: [ :entity | page := entity  ];
		streaming: false;
		ifFail: [ :exception | self downloadIssueSummaryFailed. ^ self ];
		get.

	pageStream := page readStream.
	(pageStream match: 'Issue <a href="detail?id=', issueNumber, '">',issueNumber,'</a>')
		ifFalse: [self downloadIssueSummaryFailed].
	(pageStream match: '<span class="h3" >')
		ifFalse: [self downloadIssueSummaryFailed].
	summary := pageStream upTo: $<. 
	self info issueSummary: summary