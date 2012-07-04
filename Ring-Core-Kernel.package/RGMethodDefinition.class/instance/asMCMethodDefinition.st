conversion
asMCMethodDefinition
   "Creates a MCMethodDefinition from the receiver"
	^ MCMethodDefinition cachedDefinitions
		at: self compiledMethod
		ifAbsentPut: [ self basicAsMCMethodDefinition ].