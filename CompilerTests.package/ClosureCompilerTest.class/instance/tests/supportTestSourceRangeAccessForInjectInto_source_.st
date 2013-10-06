supportTestSourceRangeAccessForInjectInto: method source: source
	"Test debugger source range selection for inject:into:"
	^self
		supportTestSourceRangeAccessForInjectInto: method
		source: source
		selectionSequence: #(	':= thisValue'
								'do: [:each | nextValue := binaryBlock value: nextValue value: each]'
								'value: nextValue value: each'
								':= binaryBlock value: nextValue value: each'
								'nextValue := binaryBlock value: nextValue value: each'
								'value: nextValue value: each'
								':= binaryBlock value: nextValue value: each'
								'nextValue := binaryBlock value: nextValue value: each'
								'^nextValue')