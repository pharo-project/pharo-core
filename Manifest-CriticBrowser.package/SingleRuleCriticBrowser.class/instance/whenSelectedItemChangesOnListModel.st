initialization
whenSelectedItemChangesOnListModel

	criticsModel whenSelectedItemChanged: [:selection |
		rule isNil ifFalse: [
		(selection
			ifNil: [self setTextModelForNil]
			ifNotNil: [
				toolbarModel critic: selection.
				rule isTransformationRule 
					ifTrue: [self setTextModelForTransformationRule: selection]
					ifFalse: [				
						(rule result isSelectorEnvironment or: [rule result isMultiEnvironment])
							ifTrue: [  self setTextModelForMethod: selection]
							ifFalse:  [ self setTextModelForClass: selection]]
				])]]