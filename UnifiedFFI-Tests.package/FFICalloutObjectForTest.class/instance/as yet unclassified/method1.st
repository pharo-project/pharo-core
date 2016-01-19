method1
	| result tmpResult |
	
	result := self handle.
	tmpResult := FFICalloutObjectForTest basicNew.
	tmpResult instVarAt: 1 put: result.
	result := tmpResult