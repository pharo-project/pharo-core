private
browse
	self parentNode
		ifNotNil: [:parent | ^ self browseClass].