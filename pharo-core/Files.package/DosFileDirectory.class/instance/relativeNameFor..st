path access
relativeNameFor: path
	"Return the full name for path, assuming that path is a name relative to me."
	path isEmpty ifTrue:[^pathName asSqueakPathName].
	(path at: 1) = $\ ifTrue:[
		(path size >= 2 and:[(path at: 2) = $\]) ifTrue:[^super relativeNameFor: path allButFirst ]. "e.g., \\pipe\"
		^super relativeNameFor: path "e.g., \windows\"].
	(path size >= 2 and:[(path at: 2) = $: and:[path first isLetter]])
		ifTrue:[^super relativeNameFor: (path copyFrom: 3 to: path size) ]. "e.g., c:"
	^pathName asSqueakPathName, self slash, path