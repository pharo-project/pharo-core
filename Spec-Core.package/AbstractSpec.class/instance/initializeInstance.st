private
initializeInstance

	^ SpecInterpreter
		interpretASpec: 
			{ self classSymbol.
				#color:. #(Color class white)} 
		model: DummyComposableModel new