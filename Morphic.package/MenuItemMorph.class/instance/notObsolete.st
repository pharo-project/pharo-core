private
notObsolete
	"Provide backward compatibility with messages being sent to the Hand.  Remove this when no projects made prior to 2.9 are likely to be used.  If this method is removed early, the worst that can happen is a notifier when invoking an item in an obsolete menu."

	(HandMorph canUnderstand: (selector)) ifTrue: [^ true]. 	"a modern one"

	self inform: 'This world menu is obsolete.
Please dismiss the menu and open a new one.'.
	^ false
