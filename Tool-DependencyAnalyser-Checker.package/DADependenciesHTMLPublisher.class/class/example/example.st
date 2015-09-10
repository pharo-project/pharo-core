example
	(String streamContents: [ :stream | 
		self publishReportFrom: DADependencyReport example stream: stream ]) inspect
