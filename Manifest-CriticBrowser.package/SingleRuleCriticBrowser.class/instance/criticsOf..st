private
criticsOf: aRule
	cache ifNil: [^ {}].
	criticsModel items: (cache criticsOf: aRule).