buildWidget

	^ SpecInterpreter 
		private_interpretASpec: self class defaultSpec 
		model: self 
		selector: nil