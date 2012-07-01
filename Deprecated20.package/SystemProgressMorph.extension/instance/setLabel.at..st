*Deprecated20
setLabel: shortDescription at: slot
	self deprecated: 'Use #label: directly on progress items instead' on: '22 May 2012' in: 'Pharo 2.0'.

	"There is no way to implement this in the new SystemProgressMorph. It doesn't make any sense because the items are not indexed"