instance creation
expression: stringOrStream context: aContext
	| instance |
	instance := self item: stringOrStream kind: AbstractEvent expressionKind.
	instance context: aContext.
	^instance