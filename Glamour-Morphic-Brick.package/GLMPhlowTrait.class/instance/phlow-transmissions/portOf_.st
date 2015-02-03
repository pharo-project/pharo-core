portOf: aSlotSymbol

	^ self ports at: aSlotSymbol ifAbsentPut: [ GLMPhlowPort new ]