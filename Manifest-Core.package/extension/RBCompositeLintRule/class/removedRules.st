removedRules
	^ {(RBCompositeLintRule new name: 'Spelling').  
		RBMissingTranslationsInMenusRule new. 
		RBGuardingClauseRule new. 
		RBMethodModifierOverrideRule new.
		RBMethodModifierSuperRule new.
		RBMethodModifierFinalRule new.
		RBAssignmentWithoutEffectRule new.
		RBUtilityMethodsRule new.
		RBMethodHasNoTimeStampRule new. }
	
