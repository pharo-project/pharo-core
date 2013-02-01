managing accessors
flushNativeFieldAccessors

	methodDict do: [:method |
		NBNativeCodeGen removeNativeCodeFrom: method ]