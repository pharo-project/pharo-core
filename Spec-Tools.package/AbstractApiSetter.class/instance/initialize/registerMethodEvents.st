registerMethodEvents

	method whenChangedDo: [ :s | 
			selector text: s asString.
			self model ifNotNil: [ :m | choice help: (m class lookupSelector: s) comment ] ]