private-exceptions
canHandleSignal: exception
	"Sent to handler (on:do:) contexts only.  If my exception class (first arg) handles exception then return true, otherwise forward this message to the next handler context.  If none left, return false (see nil>>canHandleSignal:)"

	^ (((self tempAt: 1) handles: exception) and: [self tempAt: 3])
		or: [self nextHandlerContext canHandleSignal: exception].
