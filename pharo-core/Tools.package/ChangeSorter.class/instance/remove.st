changeset menu
remove
	"Completely destroy my change set.  Check if it's OK first"

	self okToChange ifFalse: [^ self].
	self removePrompting: true.
	self update