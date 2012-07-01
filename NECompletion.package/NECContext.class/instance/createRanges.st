private
createRanges
	| parser |
	parser := SHParserST80 new on: controller model.
	ranges := parser 
				rangesIn: source
				classOrMetaClass: theClass
				workspace: controller workspace
				environment: nil.
	ranges := ranges select: [:each | each type ~= #comment]