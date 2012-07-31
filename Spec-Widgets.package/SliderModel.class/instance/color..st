as yet unclassified
color: aColor

	self widget ifNotNil: [:w | w == self ifFalse: [ super color: aColor ]]