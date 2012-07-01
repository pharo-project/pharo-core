controls
codePaneProvenanceString
	"Answer a string that reports on code-pane-provenance"

	| symsAndWordings |
	(symsAndWordings := self contentsSymbolQuints) do:
		[:aQuad |
			contentsSymbol == aQuad first ifTrue: [^ aQuad fourth]].
	^ symsAndWordings first fourth "default to plain source, for example if nil as initially"