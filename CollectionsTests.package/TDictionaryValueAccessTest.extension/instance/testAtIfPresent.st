tests - DictionaryIndexAccessing
testAtIfPresent
	"self run: #testAtIfAbsent"
	
	| t collection association keyNotIn |
	collection := self nonEmpty .
	association := collection associations anyOne.
	keyNotIn := self keyNotIn . 
	
	t := false.
	self nonEmptyDict at: association key ifPresent: [:x | t := (x = association value)].
	self assert: t.
	
	self assert: (self nonEmptyDict at: association key ifPresent: [:x | 'ABCDEF']) =  'ABCDEF'.

	self assert: (self nonEmptyDict at: keyNotIn  ifPresent: [:x | Error signal]) isNil
