announcementTimestamp
	^ self infoAt: #timestamp ifAbsent: [ self timestamp ]