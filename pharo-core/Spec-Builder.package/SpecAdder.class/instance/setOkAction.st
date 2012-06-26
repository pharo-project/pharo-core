initialization
setOkAction
	toolbar
		okAction: [ 
			(fractionField getText isEmptyOrNil or: [ offsetField getText isEmptyOrNil ])
				ifFalse: [ 
					self
						addInstVar: selectedInstVar name
						spec: selectedSpec
						fraction: fractionField getText
						offset: offsetField getText ] ]