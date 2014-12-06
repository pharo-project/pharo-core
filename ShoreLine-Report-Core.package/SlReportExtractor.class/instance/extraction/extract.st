extract

	^ SlReportMessage new
		metadata: self extractMetadata;
		payload: self extractPayload;
		yourself