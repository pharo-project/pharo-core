as yet unclassified
applyHighlights
	"Apply the relevant highlights to src and dst."

	self srcMorph highlights: (self joinMappings gather: [:j | j src highlights]).
	self dstMorph highlights: (self joinMappings gather: [:j | j dst highlights])