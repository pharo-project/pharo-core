refresh
	#(Slot AbstractLayout SlotObject SlotTest SlotModifier) do: [ :aName |
		Smalltalk 
			at: aName 
			ifPresent: [ :aClass | aClass recompileAll ] ].
	 