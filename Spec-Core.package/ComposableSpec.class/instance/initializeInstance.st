private
initializeInstance

	^ SpecInterpreter
		interpretASpec: 
			{ self classSymbol.
				#useProportionalLayout.
				#addSplitters.
				#vSpaceFill.
				#hSpaceFill.} 
		model: DummyComposableModel new