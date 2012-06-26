menu
compareToCurrentVersion
	"If the current selection corresponds to a method in the system, then spawn a window showing the diffs as text"

	| change s1 s2 |
	listIndex = 0 ifTrue: [^ self].
	change := changeList at: listIndex.
	s1 := classOfMethod organization classComment.
	s2 := change string.
	s1 = s2
		ifTrue: [^ self inform: 'Exact Match'].
	(StringHolder new
		textContents: (TextDiffBuilder buildDisplayPatchFrom: s1 to: s2 inClass: classOfMethod  prettyDiffs: self showingPrettyDiffs))
		openLabel: 'Comparison to Current Version'