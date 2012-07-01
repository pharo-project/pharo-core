protocolBrowser interface
openSubProtocolForClass: aClass

	self messages: (self collectMethodsFrom: aClass til: Object).
	self title: 'Sub protocol of ', aClass name.
	self openWithSpec.