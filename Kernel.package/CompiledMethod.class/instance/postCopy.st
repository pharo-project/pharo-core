copying
postCopy

	1 to: self literals size do: [:index |
		| literal |
		literal := self literalAt: index.

		literal class == AdditionalMethodState ifTrue: [
			literal := literal copy.
			self literalAt: index put: literal.
			self fixAdditionalMethodStateMethodReference: literal]].