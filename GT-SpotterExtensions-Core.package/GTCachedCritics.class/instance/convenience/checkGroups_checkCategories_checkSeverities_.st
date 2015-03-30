checkGroups: groupStrings checkCategories: categoryStrings checkSeverities: severitySymbols
	self ruleFilter: [ :rule |
		(groupStrings isEmptyOrNil or: [ groupStrings includes: rule group ])
			and: [ (categoryStrings isEmptyOrNil or: [ categoryStrings includes: rule group ]) 
				and: [ (severitySymbols isEmptyOrNil or: [ severitySymbols includes: rule severity ]) ] ] ]