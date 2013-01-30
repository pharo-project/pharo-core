*NautilusCommon
retrieveTraitIComeFrom

	self isFromTrait
		ifFalse: [ ^ nil ].
	^ self origin