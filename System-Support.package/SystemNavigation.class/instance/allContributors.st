author
allContributors
	"Return the list of initials and names of method authors."
	
	"I am wondering why a bag is used instead of a set. AlexandreBergel 12/29/2010 11:37"

	"SystemNavigation default allContributors"
	| contributorsNames |
	contributorsNames := Bag new.
	self allBehaviorsDo: [ :behavior |
		behavior methodsDo: [ :compiledMethod | | stamp |
			stamp := compiledMethod timeStamp.
			stamp notEmpty ifTrue: [
				contributorsNames add: compiledMethod timeStamp substrings first ]]].
	^contributorsNames