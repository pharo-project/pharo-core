tests - indexof
testIndexOf
	
	"test for http://bugs.impara.de/view.php?id=3574"
	self assert: ('abc-' asWideString indexOfAnyOf: (CharacterSet newFrom: ' -0123456789')) = 4.
	self assert: ('ab7' asWideString indexOfAnyOf: (CharacterSet newFrom: ' -0123456789')) = 3.
	self assert: ('a2c' asWideString indexOfAnyOf: (CharacterSet newFrom: ' -0123456789')) = 2.
	self assert: ('3bc' asWideString indexOfAnyOf: (CharacterSet newFrom: ' -0123456789')) = 1.
	self assert: ('abc' asWideString indexOfAnyOf: (CharacterSet newFrom: ' -0123456789')) = 0.
	
	"extension to wide characters"
	self assert: ((String with: 803 asCharacter with: 811 asCharacter) indexOfAnyOf: (CharacterSet newFrom: (String with: 811 asCharacter with: 812 asCharacter))) = 2.
	
	self assert: ('abc' indexOfAnyOf: (CharacterSet newFrom: (String with: 811 asCharacter with: 812 asCharacter))) = 0.
	
	self assert: ('abc' indexOfAnyOf: (CharacterSet newFrom: (String with: 811 asCharacter with: $c))) = 3.
	
	"make sure start index is used in wide string algorithm"
	self assert: ('ab bcd abc' copyWith: 811 asCharacter) substrings = {'ab'. 'bcd'. 'abc' copyWith: 811 asCharacter}.