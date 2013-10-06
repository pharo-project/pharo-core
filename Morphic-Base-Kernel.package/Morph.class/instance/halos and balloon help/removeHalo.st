removeHalo
	"remove the surrounding halo (if any)"
	self halo ifNotNil: [self primaryHand removeHalo]