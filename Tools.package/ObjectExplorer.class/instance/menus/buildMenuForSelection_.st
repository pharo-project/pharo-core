buildMenuForSelection: aMenu
	"Borrow a menu from my inspector"
	| element |	
	aMenu defaultTarget: self.

	element := SelfEyeElement host: self object.
	
	element mainInspectSubMenu: aMenu.
	self addTo:aMenu fromMenuModelOf:element.
		
	aMenu addLine;
		add: 'monitor changes'
		target: self
		selector: #monitor:
		argument: currentSelection.

	monitorList isEmptyOrNil
		ifFalse: [aMenu addLine;
				add: 'stop monitoring all'
				target: self
				selector: #stopMonitoring].
			
		