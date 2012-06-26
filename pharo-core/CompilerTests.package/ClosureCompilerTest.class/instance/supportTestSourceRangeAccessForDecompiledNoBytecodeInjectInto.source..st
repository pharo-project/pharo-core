tests
supportTestSourceRangeAccessForDecompiledNoBytecodeInjectInto: method source: source
	"Test debugger source range selection for inject:into:"
	^self
		supportTestSourceRangeAccessForInjectInto: method
		source: source
		selectionSequence: #(	'at: 1 put: t1'
								'do: [:t4 | t3 at: 1 put: (t2 value: (t3 at: 1) value: t4)]'
								'value: (t3 at: 1) value: t4'
								'at: 1 put: (t2 value: (t3 at: 1) value: t4)'
								']'
								'value: (t3 at: 1) value: t4'
								'at: 1 put: (t2 value: (t3 at: 1) value: t4)'
								']'
								'^t3 at: 1')