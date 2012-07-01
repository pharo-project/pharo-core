accessing
hasSubMenu: aMenuMorph
	self items do: [:each | (each hasSubMenu: aMenuMorph) ifTrue:[^true]].
	^ false
