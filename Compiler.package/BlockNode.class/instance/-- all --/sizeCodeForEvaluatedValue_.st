sizeCodeForEvaluatedValue: encoder

	^(self sizeCodeExceptLast: encoder)
		+ (statements last sizeCodeForBlockValue: encoder)