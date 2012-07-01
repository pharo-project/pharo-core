private
resetUniqueInstance
	"self resetUniqueInstance"

	UniqueInstance
		ifNotNil: [:u | UniqueInstance releaseAll.
			UniqueInstance := nil]