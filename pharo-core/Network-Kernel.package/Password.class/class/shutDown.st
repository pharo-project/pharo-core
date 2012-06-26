as yet unclassified
shutDown
	"Forget all cached passwords, so they won't stay in the image"

	self allSubInstancesDo: [:each | each cache: nil].