A MessageBrowser is a UI to browse a list of method, regardless of what they could be.

example: 

MessageBrowser new
	openWithSpec;
	messages: (SystemNavigation default allSendersOf: #at:)
	yourself