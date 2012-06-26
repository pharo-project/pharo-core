system startup
startUp
"system startup - find the appropriate proxy class for this platform"
	self setDefaultWindowProxyClass.
	"any currently extant instances must tell their sourceForm to resetProxy in order to kill potentially wrong-platform versions and reset to correct-platform"
	self registry do:[:i| i resetProxy]