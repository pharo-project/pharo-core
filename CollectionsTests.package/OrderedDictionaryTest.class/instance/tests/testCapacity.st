testCapacity
	"The current Dictionary implementation allocations more than specified; the amount allocated may
	change in the future, but it likely won't ever be less than specified, so a >= test is used instead."

	self
		assert: (self dictionaryClass new: 31) capacity >= 31;
		assert: (self dictionaryClass new: 57 withDefaultValue: nil) capacity >= 57;
		assert: (self dictionaryClass defaultValue: nil) capacity >= 10;
		assert: (self dictionaryClass new) capacity >= 10;
		assert:
			(self dictionaryClass newFrom: self dictionaryAssociations)
				capacity >= self dictionaryAssociations size.