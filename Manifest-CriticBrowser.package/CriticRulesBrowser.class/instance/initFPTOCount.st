initialization
initFPTOCount

	rulesModel getRoots do: [:rule |
		self updateCountOf: rule]