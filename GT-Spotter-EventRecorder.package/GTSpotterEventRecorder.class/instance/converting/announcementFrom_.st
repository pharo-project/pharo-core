announcementFrom: oldRecordedData
	^ GTSpotterRecorderDataAnnouncement new
			data: (self serialize: oldRecordedData);
			timestamp: DateAndTime now;
			imageHash: SmalltalkImage current imageName hash;
			sessionCreationTime: SmalltalkImage current session creationTime;
			imageVersion: SystemVersion current version;
			latestUpdate: SystemVersion current highestUpdate;
			computerUUID: GTSpotterEventRecorderSettings uniqueInstance computerUUID;
			eventRecorderVersion: GTSpotterEventRecorder version;
			yourself