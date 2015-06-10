refresh
	[ UIManager default 
		informUser: 'Refreshing catalog...'
		during: [ self provider refresh ] ]
	on: Error do: [ :e |
		e crLog.
		self inform: 'I cannot refresh catalog list. Please review your internet connection and try again!' ]