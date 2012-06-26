protocolBrowser interface
openFullProtocolForClass: aClass

	self messages: (self collectMethodsFrom: aClass til: nil).
	self title: 'Full protocol of ', aClass name.
	self openWithSpec.