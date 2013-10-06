addAllCriticsToFalsePositive

	criticsModel listItems do: [ :item | cache addFalsePositive: item forRule: rule ].