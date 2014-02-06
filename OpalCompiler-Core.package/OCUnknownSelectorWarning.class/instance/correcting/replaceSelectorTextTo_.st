replaceSelectorTextTo: aNewSelector
	| offset |
	offset := 0.
	aNewSelector keywords doWithIndex: [ :k :i | | selectorPart |
			selectorPart := self node selectorParts at: i.
			self requestor correctFrom: offset + selectorPart start to: offset + selectorPart stop with: k.
			offset := offset + k size - selectorPart value size ]