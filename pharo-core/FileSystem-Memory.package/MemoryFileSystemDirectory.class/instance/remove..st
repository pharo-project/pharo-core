accessing
remove: aFileName
	modificationTime := DateAndTime now.
	^ entries removeKey: aFileName