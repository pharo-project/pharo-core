instance creation
class: aClass category: cat 
	| instance |
	instance := self class: aClass.
	instance itemCategory: cat.
	^instance