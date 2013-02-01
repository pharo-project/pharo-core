menu
removeCriticToFalsePositive
	criticsModel selectedItems
		ifNotNil: [:criticss | 
			(criticss groupedBy: [:each | checker manifestBuilderOf: each]) 
				keysAndValuesDo: [:key :value |
					
					self removeAllCriticToFalsePositive: value on: key]].
		self updateList