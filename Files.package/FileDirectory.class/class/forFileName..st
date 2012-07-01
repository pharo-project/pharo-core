instance creation
forFileName: aString

	| path |
	path := self dirPathFor: aString.
	path isEmpty ifTrue: [^ self default].
	^ self on: path
