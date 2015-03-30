class: aClass selector: aSelector
	^ (self methods at: aClass name ifAbsentPut: [ IdentityDictionary new ])
		at: aSelector ifAbsentPut: [ RBSelectorEnvironment onMethods: { aSelector } forClass: aClass ]