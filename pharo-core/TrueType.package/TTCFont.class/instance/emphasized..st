accessing
emphasized: code

	code = 0 ifTrue: [^ self].
	derivatives ifNil: [^ self].
	(((code bitAnd: 20) ~= 0) and: [
		derivatives size < code or: [(derivatives at: code) isNil]]) ifTrue: [
		self addLined.
	].
	^ (derivatives at: code) ifNil: [self].
