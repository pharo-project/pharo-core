load
	self createClass ifNotNil: [:class |
		SystemAnnouncer uniqueInstance suspendAllWhile: [
			self hasComment ifTrue: [class classComment: comment stamp: commentStamp]]].