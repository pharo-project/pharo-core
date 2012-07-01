initialization
zapHistory
	"Drop all recorded information not needed to simply keep track of what has been changed.
	Saves a lot of space."

	methodChanges do: [:r | r noteNewMethod: nil].  "Drop all refes to old methods"