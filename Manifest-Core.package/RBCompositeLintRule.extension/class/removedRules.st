*Manifest-Core
removedRules
	^ {(RBCompositeLintRule new name: 'Spelling').  
		RBMissingTranslationsInMenusRule new. 
		RBGuardingClauseRule new. 
		RBMethodModifierOverrideRule new.
		RBMethodModifierSuperRule new.
		RBMethodModifierFinalRule new.
		BugRule new.
		DoNotUnderstandThisRule new.
		RBAssignmentWithoutEffectRule new.
		RBUtilityMethodsRule new. } "this rule is contains a bug"
	
