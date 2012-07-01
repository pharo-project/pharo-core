construction
analyzeItemLabels
	"Analyze the item labels"
	items ifNotNil: [items do:[:item| item analyzeLabel]]
