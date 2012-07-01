private
lookInFolder: folder

	| result |

	result := OrderedCollection new.
	folder exists ifFalse: [ ^ nil ].
	
	"To filter resources files such as .DS_Store"
	folder fileNames do: [:name |
		name first = $.
			ifFalse: [ result add: (folder / name)]].

	^ result isEmpty
		ifTrue: [ nil ]
		ifFalse: [ result ]