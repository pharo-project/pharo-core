pushToRepositoryFrom: aTextPresentation
	| page |
	page := GTPlaygroundPage new.
	page content: aTextPresentation text.
	page content asString trimBoth isEmpty
		ifFalse: [ self class repository add: page ] 