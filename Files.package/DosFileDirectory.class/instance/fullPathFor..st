path access
fullPathFor: path
	"Return the fully-qualified path name for the given file."
	path isEmpty ifTrue:[^pathName asSqueakPathName].
	(path at: 1) = $\ ifTrue:[
		(path size >= 2 and:[(path at: 2) = $\]) ifTrue:[^path]. "e.g., \\pipe\"
		^self driveName , path "e.g., \windows\"].
	(path size >= 2 and:[(path at: 2) = $: and:[path first isLetter]])
		ifTrue:[^path]. "e.g., c:"
	^pathName asSqueakPathName, self slash, path