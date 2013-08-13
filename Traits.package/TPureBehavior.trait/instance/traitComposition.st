traits
traitComposition
	"Return my trait composition. Manipulating the composition does not
	effect changes automatically. Use #setTraitComposition: to do this but
	note, that you have to make a copy of the old trait composition before
	changing it because only the difference between the new and the old
	composition is updated."
	
	^self explicitRequirement 