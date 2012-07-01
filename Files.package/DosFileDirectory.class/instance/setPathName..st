as yet unclassified
setPathName: pathString
	"Ensure pathString is absolute - relative directories aren't supported on all platforms."

	(pathString isEmpty
		or: [pathString first = $\
			or: [pathString size >= 2 and: [pathString second = $: and: [pathString first isLetter]]]])
				ifTrue: [^ super setPathName: pathString].

	self error: 'Fully qualified path expected'