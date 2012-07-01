protocolBrowser interface
openSubProtocolForClass: aClass
	"Open a browser on the methods understood by aClass excluding the methods from Object and ProtoObject"

	self new openSubProtocolForClass: aClass