as yet unclassified
buttonRow: specArray
	| panel |
	panel := builder pluggablePanelSpec new.
	panel children: OrderedCollection new.
	specArray do:
		[:spec | | button |
		
		button := builder pluggableButtonSpec new.
		button model: tool.
		button label: spec first asString.
		button action: spec second.
		button help: spec third.
		button enabled: (spec at: 4 ifAbsent: [#buttonEnabled]).
		button state: (spec at: 5 ifAbsent: [#buttonSelected]).
		panel children add: button].
	panel layout: #horizontal.
	panel frame: currentFrame.
	window children add: panel