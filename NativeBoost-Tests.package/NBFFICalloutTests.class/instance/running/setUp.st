setUp

	self class selectors do: [ :sel | NBNativeCodeGen removeNativeCodeFrom: (self class>>sel) ]