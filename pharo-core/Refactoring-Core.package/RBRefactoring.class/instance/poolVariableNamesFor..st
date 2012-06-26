utilities
poolVariableNamesFor: aClass 
	| pools |
	pools := Set new.
	aClass withAllSuperclasses do: 
			[:each | 
			each allPoolDictionaryNames do: 
					[:pool | 
					pools addAll: ((Smalltalk globals at: pool asSymbol) keys 
								collect: [:name | name asString])]].
	^pools