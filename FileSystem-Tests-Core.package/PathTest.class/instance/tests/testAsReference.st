testAsReference
	| path reference |
	path := Path * 'plonk'.
	reference := path asFileReference.
	self assert: reference class = FileReference.
	self assert: reference path = path