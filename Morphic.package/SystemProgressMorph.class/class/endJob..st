job subscription
endJob: aJobEnd 

	self flag: 'Intermediate Hack to avoid out of bounds errors when using asynchronous code'.
	self uniqueInstance bars isEmpty ifFalse: [
		self uniqueInstance close: self uniqueInstance bars last].