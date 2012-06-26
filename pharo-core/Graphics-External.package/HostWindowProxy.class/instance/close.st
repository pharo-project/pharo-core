initialize-release
close
	"close this window"
	windowHandle ifNil: [^self].
	self unregister.
	self primitiveWindowClose: windowHandle