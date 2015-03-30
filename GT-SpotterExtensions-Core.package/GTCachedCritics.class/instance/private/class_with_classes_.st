class: aClass with: aSelector classes: aCollection
	^ (self classesWith at: aClass name ifAbsentPut: [ IdentityDictionary new ])
		at: aSelector ifAbsentPut: [ RBClassEnvironment classes: aCollection ]