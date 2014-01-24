initializePresenter

	models whenSelectedItemChanged: [ :class |
		protocols resetSelection.
		events resetSelection.
		class
			ifNil: [ 
				protocols items: #().
				events items: #() ]
			ifNotNil: [ 
				protocols items: (self methodsIn: class for: 'protocol').
				events items: (self methodsIn: class for: 'protocol-events') ] ]