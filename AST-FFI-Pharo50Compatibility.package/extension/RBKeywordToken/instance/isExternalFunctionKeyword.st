isExternalFunctionKeyword
	^ self value = #apicall: or: [ self value = #cdecl: ]