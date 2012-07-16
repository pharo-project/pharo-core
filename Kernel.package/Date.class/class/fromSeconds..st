instance creation
fromSeconds: seconds
	"Answer an instance of me which is 'seconds' seconds after January 1, 1901."

	^ self fromDays: ((Duration seconds: seconds) days)