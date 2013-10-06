nodes: nodes shouldBe: correctNodes
	"sort the collection of nodes. The result should be the correctNodes"

	| sorted |
	sorted := SortHierarchically sortNodes: nodes asArray.
	self assert: sorted size equals: correctNodes size.
	correctNodes with: sorted do: [:node :sortedNode | self assert: node equals: sortedNode]