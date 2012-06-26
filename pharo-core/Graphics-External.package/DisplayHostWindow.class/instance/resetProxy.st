snapshots
resetProxy
	"private - for use when resuming a snapshot file only. If the windowProxy had previously been created, nil it and reopen cleanly. IF you try to use this in a 'live' system it will NOT close the windows since startup conditions assume that proxies are invalid so we don't attempt to close them - since that could cause other problems"
	windowProxy ifNotNil: 
		[ windowProxy := nil.
		self open ]