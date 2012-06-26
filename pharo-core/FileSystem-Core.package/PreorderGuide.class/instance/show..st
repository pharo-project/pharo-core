showing
show: aReference 
	self push: aReference entry.
	self whileNotDoneDo: 
		[| entry |
		entry := self pop.
		entry isFile 
			ifTrue: [visitor visitFile: entry]
			ifFalse: 
				[visitor visitDirectory: entry.
				self pushAll: entry reference entries]]