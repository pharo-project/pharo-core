updateAnnouncement: aGTEventAnnouncement withData: aByteArray
	^ aGTEventAnnouncement
			data: aByteArray;
			serializedBy: self class name;
			eventRecorderVersion: self version;
			timestamp: DateAndTime now;
			imageHash: SmalltalkImage current imagePath hash;
			imageVersion: SystemVersion current version;
			latestUpdate: SystemVersion current highestUpdate;
			computerUUID: GlobalIdentifier uniqueInstance computerUUID asString;
			sessionUUID: SmalltalkImage current session sid;
			sessionCreationTime: SmalltalkImage current session creationTime;
			yourself