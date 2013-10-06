privCleanGlobals

	#(ActiveEvent World ActiveWorld ActiveHand) do: [:sym |
		Smalltalk at: sym put: nil.
		 Smalltalk removeKey: sym ].