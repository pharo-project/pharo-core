installing
load
	self createClass ifNotNil: [:class |
		SystemAnnouncer uniqueInstance suspendAllWhile: [
			class class instanceVariableNames: self classInstanceVariablesString.
			self hasComment ifTrue: [class classComment: comment stamp: commentStamp]]].