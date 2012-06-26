traits
removeFromTraitCompositionOfUsers
	self users do: [:each |
		each removeFromComposition: self ]