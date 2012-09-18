*NautilusCommon
retrieveTraitIComeFrom

	self isFromTrait
		ifFalse: [ ^ nil ].
	^ self methodClass traits detect: [:each | each includesSelector: self selector ]