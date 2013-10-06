loader: aLoader

	"We're interested in propogating the loader state, _except_ for the spec"
	loader := aLoader copy.
	loader spec: self