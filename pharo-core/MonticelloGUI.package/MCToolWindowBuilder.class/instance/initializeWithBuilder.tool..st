as yet unclassified
initializeWithBuilder: aBuilder tool: aTool
	builder := aBuilder.
	tool := aTool.
	window := builder pluggableWindowSpec new.
	window children: OrderedCollection new.
	window label: tool label asString.
	window model: tool.
	window extent: tool defaultExtent.