testIncludesSubstring
	"test that Text correctly checks that the supplied substring is present (case sensitive)"
	self assert: ('testing this string' asText includesSubstring: 'ring').
	self assert: ('ιθΰτόφίδσρνα' asText includesSubstring: '').
	self deny: ('ιθΰτόφίδσρνα' asText includesSubstring: 'a').
	self assert: ('ιθΰτόφίδσρνα' asText includesSubstring: 'ίδ').
	self deny: ('kjdsnlksjdf' asText includesSubstring: 'K')