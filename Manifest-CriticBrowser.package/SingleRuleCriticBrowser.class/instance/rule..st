initialization
rule: aRule

	rule := aRule.
	(rule isNil or: [rule isComposite ]) 
		ifTrue: [ ^ self].	
	critics := rule critics.
	criticsModel items: rule critics.
	toolbarModel rule: rule.