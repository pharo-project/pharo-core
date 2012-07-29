running
tearDown
	SystemAnnouncer uniqueInstance doSilently: [
		self class removeSelector: #add:with:.
		self class removeSelector: #answer42.
		self class removeSelector: #foo ]