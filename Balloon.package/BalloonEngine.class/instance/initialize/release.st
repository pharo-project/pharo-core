release
	self class recycleBuffer: workBuffer.
	workBuffer := nil.
	super release.