Object subclass: #RBScanner
	instanceVariableNames: 'stream buffer tokenStart currentCharacter characterType classificationTable comments errorBlock'
	classVariableNames: 'CascadePatternCharacter KeywordPatternCharacter PatternVariableCharacter'
	poolDictionaries: ''
	category: 'AST-Core-Parser'