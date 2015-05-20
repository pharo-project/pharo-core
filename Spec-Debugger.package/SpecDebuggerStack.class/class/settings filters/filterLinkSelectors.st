filterLinkSelectors
  	^ LinkSelectorFilterEnabled ifNil:[ LinkSelectorFilterEnabled := false ]