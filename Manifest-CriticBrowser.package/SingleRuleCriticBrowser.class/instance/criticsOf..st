private
criticsOf: aRule
	cache ifNil: [^ {}].
	criticsModel 
			items: ((cache criticsOf: aRule) sorted: [ :a :b|  a name <  b name]).