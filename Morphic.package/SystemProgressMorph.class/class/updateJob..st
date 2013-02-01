job subscription
updateJob: aJobChange
	self uniqueInstance bars last 
		label: aJobChange title;
		progress: aJobChange progress.
	self uniqueInstance changed.