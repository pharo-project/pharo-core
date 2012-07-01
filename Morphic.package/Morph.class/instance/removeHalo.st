halos and balloon help
removeHalo
	"remove the surrounding halo (if any)"
	self halo isNil
		ifFalse: [self primaryHand removeHalo]