withUpdateLog: aString

	self logStream nextPutAll: ' ------------------------------------------------------' ; cr.
	self logStream nextPutAll: thisContext sender selector asString. 
	self logStream cr; nextPutAll: aString ; cr.