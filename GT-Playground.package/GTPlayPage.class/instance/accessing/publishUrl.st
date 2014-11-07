publishUrl
	| url |
	url := GTUrlProvider new post: self content.
	Clipboard clipboardText: url asString.
	self inform: url asString , ' was published and the url was copied to clipboard'