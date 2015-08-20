isUnicodeStringWithCJK

	^self anySatisfy: [:char | Unicode isUnifiedKanji: char charCode]
	