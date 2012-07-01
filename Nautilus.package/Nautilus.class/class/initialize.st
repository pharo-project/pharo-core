class initialization
initialize

	groups ifNil: [ groups := self buildGroupManager ].
	SystemBrowser default: self