ruleFilter
	^ ruleFilter ifNil: [ ruleFilter := self defaultRuleFilter ]