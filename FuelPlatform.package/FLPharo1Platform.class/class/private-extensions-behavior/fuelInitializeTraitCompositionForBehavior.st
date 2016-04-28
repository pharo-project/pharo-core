fuelInitializeTraitCompositionForBehavior
	<flExtensionOf: #Behavior selector: #fuelInitializeTraitComposition>
	self traitComposition traits do: [:each | each addUser: self]