converting
groupedByPackageSilently
	"update the instance variable"
	
	| association |
	association := self buildByPackage.
	self dictionary: association key.
	self sortedMethodReferencesList: association value.
	self sortingSelector: self byPackageSelector.