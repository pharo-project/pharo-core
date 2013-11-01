who
	"Answer an Array of the class in which the receiver is defined and the 
	selector to which it corresponds."

	self deprecated: 'use #methodClass and #selector ' on: '04 May 2013' in: 'Pharo 3.0'.
	^{self methodClass. self selector}.
