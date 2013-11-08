endOfInitialization

	getItemsSelector whenChangedDo: [:e | self list updateItems ].
	setIndexSelector value ifNotNil: [:s |
		self list whenSelectedIndexChangedDo: [:a :b :c :d | 
			self model perform: s withEnoughArguments: {a. b. c. d } ]].

	getHeaderTitleSelector whenChangedDo: [:s | self list hasHeader: (s notNil) ].
	self list endOfInitialization