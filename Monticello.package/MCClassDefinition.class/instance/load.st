installing
load
	self createClass ifNotNil: [:class |
		SystemChangeNotifier uniqueInstance doSilently: [
			class class instanceVariableNames: self classInstanceVariablesString.
			self hasComment ifTrue: [class classComment: comment stamp: commentStamp]]].