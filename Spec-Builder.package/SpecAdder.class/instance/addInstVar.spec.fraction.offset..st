private
addInstVar: name spec: specName fraction: fraction offset: offset

	| spec f o |
	f := self class compilerClass evaluate: fraction.
	o := self class compilerClass evaluate: offset.

	spec := descriptionHolder contents specDescription.
	spec addInstVar: name spec: specName fraction: f offset: o