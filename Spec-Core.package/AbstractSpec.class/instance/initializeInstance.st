private
initializeInstance

	^ SpecInterpreter
		private_interpretASpec: 
			{ self classSymbol.
				#color:. #(Color class white)} 
		model: DummyComposableModel new