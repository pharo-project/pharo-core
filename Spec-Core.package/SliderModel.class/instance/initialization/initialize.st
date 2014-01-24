initialize

	super initialize.

	max := 100 asReactiveVariable.
	min := 0 asReactiveVariable.
	quantum := 1 asReactiveVariable.
	value := 0 asReactiveVariable.
	absoluteValue := 0 asReactiveVariable.
	labelHolder := '' asReactiveVariable.
	isChanging := false.
	
	max whenChangedDo: [:m | self changed: { #max: . m } ].
	min whenChangedDo: [:m | self changed: { #min: . m } ].
	quantum whenChangedDo: [:m | self changed: { #quantum: . m } ].
	
	value whenChangedDo: [:v |
		isChanging ifFalse: [
			isChanging := true.
			self absoluteValue: ((v-self min)/(self max-self min)).
			self changed: { #scaledValue: . v }.
			isChanging := false ].
		self changed: #value.].
	
	absoluteValue whenChangedDo: [:v | 
		isChanging ifFalse: [
			isChanging := true.
			self value: (self min+(v*(self max-self min)) roundTo: self quantum).
			self changed: { #value: . v }.
			isChanging := false ]].
	
	labelHolder whenChangedDo: [:v | self changed: #label ].