browseVariableReferences

	| menu classVarSubMenu |

	self selectedClass ifNil: [ ^self ].
	
	classVarSubMenu := MenuMorph new.
	
	self 
	buildVariableReferencesMenuFrom: classVarSubMenu 
	withIcon: Smalltalk ui icons classIcon   
	contentBy: #classVarNames.
	
	menu := MenuMorph new.
	menu 
	buildTitle: [ :menuTitle | menuTitle
		title: (self selectedClass printString);
		color: Color transparent
	];
	add: 'Class Variables' subMenu: (classVarSubMenu).
	
	self 
	buildVariableReferencesMenuFrom: menu 
	withIcon: nil
	contentBy: #instVarNames.
	
	menu popUpInWorld.
