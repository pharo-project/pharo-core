newListModelIn: aPopup

	|model|
	model := GLMBrickListModel new
		on: self currentBindingsSorted.
	model
		morphAtLogic: [ :index | self newBindingRow: (model origin at: index) for: model origin in: aPopup ].
	^ model