isActionHandled
	"Return true if the provided method fits this action requirement"

	^ method literals includesAnyOf: #( flag flag: )