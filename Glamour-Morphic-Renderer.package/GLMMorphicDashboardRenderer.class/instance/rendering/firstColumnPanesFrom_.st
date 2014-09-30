firstColumnPanesFrom: aGLMDashboard

	|tmpHalfSizePanes tmpResult|
	aGLMDashboard panes isEmpty ifTrue: [^#()].
	tmpResult := OrderedCollection new.
	tmpHalfSizePanes := (aGLMDashboard panes size / 2) asFloat rounded.
	1 to: tmpHalfSizePanes do: [:anIndex |
		tmpResult add: (aGLMDashboard panes at: anIndex)
		].
	^ tmpResult