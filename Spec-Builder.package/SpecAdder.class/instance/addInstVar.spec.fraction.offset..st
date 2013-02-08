private
addInstVar: name spec: specName fraction: fraction offset: offset

	| aSpec f o |
	f := self class compilerClass evaluate: fraction.
	o := self class compilerClass evaluate: offset.

	aSpec := descriptionHolder contents specDescription.
	aSpec addInstVar: name spec: specName fraction: f offset: o