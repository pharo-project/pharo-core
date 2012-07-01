installing
load
	 self createClass ifNotNil: [:trait |
		self hasComment ifTrue: [trait classComment: comment stamp: commentStamp]]