gtExampleLintRuleWithResult
	<gtExampl: 'Lint rule with result'>
	| rule |
	(rule :=RBLongMethodsRule new) result 
		addClass: RBBasicLintRule selector: #gtExampleLintRuleWithResult;
		addClass: RBBasicLintRule selector: #gtExampleLintRuleWithoutResult.
	^ rule