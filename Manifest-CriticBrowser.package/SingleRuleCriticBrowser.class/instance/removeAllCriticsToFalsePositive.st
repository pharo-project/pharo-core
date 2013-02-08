menu
removeAllCriticsToFalsePositive

	criticsModel listItems
		 do: [:item |
			cache removeFalsePositive: item forRule: rule	].

		"self updateList"
	
	"(criticsModel  listItems groupedBy: [:each | checker manifestBuilderOf: each]) 
		keysAndValuesDo: [:key :value |
			self removeAllCriticToFalsePositive: value on: key].
	self updateList"
			