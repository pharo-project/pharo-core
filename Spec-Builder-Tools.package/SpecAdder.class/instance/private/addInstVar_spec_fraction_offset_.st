addInstVar: name spec: specName fraction: fraction offset: offset

	| aSpec f o |
	f := self class compiler evaluate: fraction.
	o := self class compiler evaluate: offset.

	aSpec := descriptionHolder contents specDescription.
	aSpec addInstVar: name spec: specName fraction: f offset: o