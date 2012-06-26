accessing request
setIfModifiedSince: reference
	"Set the If-Modified-Since HTTP header to reference for the current request.
	Reference should be compatible with Date or DateAndTime."

	self resetRequestIfNeeded.
	request setIfModifiedSince: reference