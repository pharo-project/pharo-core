autoSelect: aSelector
    textModel readSelectionBlock: [ :text |
        self selectedMessage
            ifNotNil: [ :msg |
                (self sourceIntervalOf: aSelector in: msg ast) 
						ifEmpty:[ self searchedString: aSelector asString in: text ] ]]