filterNilSelectors
  	^ NilSelectorsFilterEnabled ifNil:[ NilSelectorsFilterEnabled := false ]