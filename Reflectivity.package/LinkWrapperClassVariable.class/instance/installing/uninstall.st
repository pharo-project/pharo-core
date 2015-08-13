uninstall
	self wrappedVariable usingMethods do: #removeLink.
	self definingClass replaceClassVariable: self wrappedVariable.