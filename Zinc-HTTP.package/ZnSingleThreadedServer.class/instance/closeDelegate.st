private
closeDelegate
	| delegate |
	delegate := self delegate.
	(delegate notNil and: [ delegate respondsTo: #close ])
		ifTrue: [ 
			self log debug: 'Closing delegate'.
			delegate close ]