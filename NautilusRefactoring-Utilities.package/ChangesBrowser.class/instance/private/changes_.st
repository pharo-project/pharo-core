changes: aCollection

	| composite |
	composite := RBCompositeRefactoryChange new.
	aCollection do: [:change | composite addChange: change ].
	self change: composite.