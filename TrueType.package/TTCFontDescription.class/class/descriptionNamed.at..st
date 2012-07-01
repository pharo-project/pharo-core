as yet unclassified
descriptionNamed: descriptionName at: index

	| array |
	(array :=  self descriptionNamed: descriptionName) ifNil: [^ nil].
	^ array at: index.
