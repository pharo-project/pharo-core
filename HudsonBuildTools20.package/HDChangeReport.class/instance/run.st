running
run
	
	'changelog.xml' asFileReference ensureDeleted writeStreamDo: [ :stream|
		self generateOn: stream ]