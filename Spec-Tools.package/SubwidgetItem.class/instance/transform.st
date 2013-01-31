transformation
transform
	| name class |

	name := self instVarName getText asString.
	self validated: true.
	class := self classChooser selectedItem label asSymbol.

	self widgets removeAll.
	self instantiateModels: #(
		text 		TextInputFieldModel
		remove 	ButtonModel
		x0			LabelModel
		x0Field 		TextInputFieldModel
		y0			LabelModel
		y0Field 		TextInputFieldModel
		x1			LabelModel
		x1Field 		TextInputFieldModel
		y1			LabelModel
		y1Field 		TextInputFieldModel ).
			
	self text 
		text: name;
		enabled: false.
		
	self remove
		label: 'x';
		state: false;
		action: [ self deleteMe ].
		
	self x0 text: 'x0'.
	self y0 text: 'y0'.
	self x1 text: 'x1'.
	self y1 text: 'y1'.
		
	self x0Field 
		text: '0';
		autoAccept: true;
		acceptBlock: [ self model ifNotNil: [:m | m rebuild ]].
	self y0Field 
		text: '0';
		autoAccept: true;
		acceptBlock: [ self model ifNotNil: [:m | m rebuild ]].
	self x1Field 
		text: '1';
		autoAccept: true;
		acceptBlock: [ self model ifNotNil: [:m | m rebuild ]].
	self y1Field 
		text: '1';
		autoAccept: true;
		acceptBlock: [ self model ifNotNil: [:m | m rebuild ]].
	
	self needRebuild: false.
	initialExtent :=  400@50.
	self buildWithSpecLayout: self newLayout.
	
	self model ifNotNil: [:m | m addInstVarNamed: name forClassName: class ].