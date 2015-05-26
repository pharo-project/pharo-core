isStale: timeToLive
	^ self now - timestamp >= timeToLive