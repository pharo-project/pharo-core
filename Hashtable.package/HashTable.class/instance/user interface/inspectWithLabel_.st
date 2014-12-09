inspectWithLabel: aLabel
	"Open a HashTableInspector on the receiver. Use basicInspect to get a normal (less useful) type of inspector."

	self inspectorClass openOn: self withEvalPane: true withLabel: aLabel