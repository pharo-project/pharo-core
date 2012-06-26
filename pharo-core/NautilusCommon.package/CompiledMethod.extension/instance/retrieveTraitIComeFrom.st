*NautilusCommon
retrieveTraitIComeFrom

	self isFromTrait
		ifFalse: [ ^ nil ].
	^ self methodClass traits detect: [:each | each methodDict keys includes: self selector ]