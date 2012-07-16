menu
messageMenu: aMenu shifted: shifted from: src to: dest
	"Fill aMenu with items appropriate for the message list; could be for a single or double changeSorter"

	src selectedSelector ifNil: [ ^ nil ].	
	aMenu target: self.

	aMenu
			add: 'Copy method to the other change set'
			target: self
			selector: #copyMethodFrom:to:
			argumentList: {src.dest}.
	aMenu
			add: 'Move method to the other change set' 
			target: self
			selector: #moveMethodFrom:to:
			argumentList: {src.dest}.
	aMenu addLine.
					
	src messageMenu: aMenu shifted: shifted.
	
	^ aMenu