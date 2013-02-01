initialization
collectRulesData
	"Iterates over rules and calculate some information"
	
	rulesModel getRoots do: [:rule | self updateCountOf: rule ]