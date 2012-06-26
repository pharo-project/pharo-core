as yet unclassified
initializeWithPackages
	| pkgs |
	pkgs :=  'Kernel* Collection*'.
	pkgs ifNotNil: [
	(pkgs findTokens: ' ' ) do: [:e |  self default quickFillWithCategoriesMatching: e ]]

