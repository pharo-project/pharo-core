basicTypesSymbol
	^ Lesson
title: 'Basic types: Symbols' 
lesson: 
'"A Symbol is a String which is guaranteed to be globally unique. 

There is one and only one Symbol #PharoTutorial. There may be several ''PharoTutorial'' String objects.

(Message == returns true if the two objects are the SAME)"

''PharoTutorial'' asSymbol.

#PharoTutorial asString.

(2 asString) == (2 asString).

(2 asString) asSymbol == (2 asString) asSymbol.


(Smalltalk at: #PharoTutorial) next.'