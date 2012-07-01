private
extensionMethodsTo: packageInfo
	^ packageInfo extensionMethods 
		collect: [ :reference | FLMethodExtension with: reference compiledMethod ]