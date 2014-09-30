secondColumnPanesFrom: aGLMDashboard

	|tmpHalfSizePanes tmpResult|
	aGLMDashboard panes isEmpty ifTrue: [^#()].
	tmpResult := OrderedCollection new.
	tmpHalfSizePanes := (aGLMDashboard panes size / 2) asFloat rounded.
	(tmpHalfSizePanes + 1) to: aGLMDashboard panes size do: [:anIndex |
		tmpResult add: (aGLMDashboard panes at: anIndex)
		].
	^ tmpResult