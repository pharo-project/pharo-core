initialize-release
close
	"close this window"
	windowProxy ifNil: [ ^ self error: 'cannot close never opened window' ].
	"We don't use 'self windowProxy close' here because if we've never setup the window why do it now only to close it immediately?"
	windowProxy close.
	windowProxy := nil