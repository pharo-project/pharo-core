testAtIfPresent
	| dictionary |

	dictionary := self dictionaryWithSingleAssociation.
	self assert:
		(dictionary
			at: self singleKey
			ifPresent: [:each |
				each = self singleValue
					ifTrue: [self singleValue]
					ifFalse: [nil]]) = self singleValue.
	self assert:
		(dictionary
			at: self absentKey
			ifPresent: [:each | self signalFailure: 'Block should not have been evaluated']) isNil.