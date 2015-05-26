categoryMorphOf: aProcessor

	^ self categories at: aProcessor ifAbsentPut: [ self addCategory: aProcessor ]