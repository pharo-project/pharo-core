testing
firstPartIsDriveLetter
	"Return true if the first part of the path is a letter
	followed by a $: like 'C:' "
	
	| firstPart |
	path isEmpty ifTrue: [^false].
	firstPart := path first.
	^firstPart size = 2 and: [
		firstPart first isLetter
			and: [firstPart last = $:]]