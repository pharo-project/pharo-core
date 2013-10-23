localSelectorsDo: selectorBlock
	"Evaluate selectorBlock for all the message selectors that are defined in the class."

	^ self localSelectors do: selectorBlock