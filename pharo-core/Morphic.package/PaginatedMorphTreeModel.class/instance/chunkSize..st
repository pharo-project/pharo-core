pager managing
chunkSize: anIntegerOrNil
	self setPageSize: anIntegerOrNil.
	self changed: #chunkSize
