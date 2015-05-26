writeRequest
	self signalHTTPProgress: 'Writing request'.
	request writeOn: connection.
	connection flush