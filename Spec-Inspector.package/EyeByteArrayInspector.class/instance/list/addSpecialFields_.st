addSpecialFields: elements
	elements add: (DynamicEyeElement 
		host: self object 
		label: 'hex bytes' 
		value: [ self objectAsHexBytes ]).
	elements add: (DynamicEyeElement 
		host: self object 
		label: 'hex string' 
		value: [ self objectAsHexString ]).
	elements add: (DynamicEyeElement 
		host: self object 
		label: 'latin-1 string' 
		value: [ self objectAsLatin1String ]).
	elements add: (DynamicEyeElement 
		host: self object 
		label: 'utf-8 string' 
		value: [ 
			[ self objectAsUTF8String ] 
				on: ZnInvalidUTF8 
				do: [ :exception | exception asString ] ]).