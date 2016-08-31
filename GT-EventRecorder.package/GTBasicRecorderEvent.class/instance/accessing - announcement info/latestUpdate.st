latestUpdate
	^ self infoAt: #latestUpdate ifAbsent: [ SystemVersion current highestUpdate ]