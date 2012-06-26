to clean later
isTrunk
	"Trunk image file names use several letter combinations e.g. 'a' for alpha, 'rc' for release candidates"

	^ (self version allButFirst: 5) anySatisfy: [ :char | char isLetter ]