testIsMorphicModel
	"test isMorphicModel"
	self deny: Object new isMorphicModel.
	self deny: Morph new isMorphicModel.
	self assert: MorphicModel new isMorphicModel.
