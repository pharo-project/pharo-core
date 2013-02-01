*Manifest-Core
critics
	| result |
	
	result := self result.
	
	result
		ifNil: [ ^ {} ].
		
	( result isKindOf: RBMultiEnvironment) 
		ifTrue: [ result := result asSelectorEnvironment ].
	
	result isSelectorEnvironment
		ifTrue: [ 
			| array |
			array := OrderedCollection new: result numberSelectors.
			result classes do: [:cl | 
				result selectorsForClass: cl do: [:sel | array add:  (cl>>sel)]]. 
			^ array ].
	
	^ result allClasses 