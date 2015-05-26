readEntityFrom: stream
	self entity: (self entityReaderOn: stream) readEntity
	