extendAgain: aLayout with: someScope
	| result |
	result := self species new.
	result host: aLayout host.
	aLayout compactClassIndex > 0
		ifTrue: [ result compactClassIndex: aLayout compactClassIndex ].
	result slotScope: someScope.
	^ result