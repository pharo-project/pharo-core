testAbsoluteBrowser

	url := Url absoluteFromText: 'browser:bookmarks#mainPart'.

	self assert: url schemeName = 'browser'.
	self assert: url locator = 'bookmarks'.
	self assert:url fragment = 'mainPart'.
	self assert: url class = BrowserUrl.
	