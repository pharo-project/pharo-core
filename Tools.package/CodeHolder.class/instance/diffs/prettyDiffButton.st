prettyDiffButton
	"Return a checkbox that lets the user decide whether prettyDiffs should be shown or not"
		
	^self theme builder
		newCheckboxFor: self
		getSelected: #showingPrettyDiffs
		setSelected: #togglePrettyDiffing
		label: 'prettyDiffs' translated
		help: 'If checked, then pretty-printed code differences from the previous version, if any, will be shown.' translated

