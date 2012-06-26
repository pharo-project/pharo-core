accessing
allItemKinds
	"self allItemKinds"

	^(AbstractEvent class organization listAtCategoryNamed: #'item kinds') 
		collect: [:sel | self perform: sel]