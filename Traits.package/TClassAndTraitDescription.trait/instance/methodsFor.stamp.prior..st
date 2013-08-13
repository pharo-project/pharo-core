filein/out
methodsFor: categoryName stamp: changeStamp prior: indexAndOffset
	"Prior source link ignored when filing in."
	^ ClassCategoryReader new setClass: self
				category: categoryName asSymbol
				changeStamp: changeStamp

"Most importantly, return the new ClassCategoryReader, so a fileIn will let it seize control.  So method will be placed in the proper category.  See the transfer of control where ReadWriteStream fileIn calls scanFrom:"