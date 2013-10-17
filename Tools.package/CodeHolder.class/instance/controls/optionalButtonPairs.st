optionalButtonPairs
	"Answer a tuple (formerly pairs) defining buttons, in the format:
			button label
			selector to send
			help message"

	| aList |

	aList := #(
	('Browse'			browseMethodFull			'View this method in a browser')
	('Senders' 			browseSendersOfMessages	'Browse senders of...')
	('Implementors'		browseMessages				'Browse implementors of...')
	('Versions'			browseVersions				'Browse versions')), 

	(self class decorateBrowserButtons
		ifTrue:
			[{#('Inheritance'		methodHierarchy 'Browse method inheritance
green: sends to super
tan: has override(s)
mauve: both of the above
pink: is an override but doesn''t call super
pinkish tan: has override(s), also is an override but doesn''t call super' )}]
		ifFalse:
			[{#('Inheritance'		methodHierarchy			'Browse method inheritance')}]),

	#(
	('Hierarchy'		classHierarchy				'Browse class hierarchy')
	('Inst vars'			browseInstVarRefs			'Inst var refs...')
	('Class vars'			browseClassVarRefs			'Class var refs...')).

	^ aList