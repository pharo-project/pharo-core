initialization
initializeTypeToMimeMappings
	"MacFileDirectory initializeTypeToMimeMappings"
	TypeToMimeMappings := Dictionary new.
	#(
		"format"
		"(abcd		('image/gif'))"
	) do:[:spec|
		TypeToMimeMappings at: spec first asString put: spec last.
	].
