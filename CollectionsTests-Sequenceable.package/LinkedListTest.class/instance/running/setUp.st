setUp
	
	super setUp.
	list := LinkedList new.
	link1 := 133.
	link2 := 'test'.
	link3 := $h.
	link4 := Set new.
	elementNotIn := Link new.
	collectionWithoutNil := LinkedList new add: link1; add: link2 ; add: link3; yourself.
	elementIn := 'thisElementIsIncluded'.
	collectionWithoutEqualElements := LinkedList new add: elementIn ; add: 'pewpew' ; add: 'normal links'; add: 'are no fun!' ;add: $x ;yourself.
	collection5Elements := collectionWithoutEqualElements .
	
	"sameAtendAndBegining := LinkedList new add: Link new; add: Link new ; add: Link new; yourself."
	link := ValueLink value: 42.
	nonEmpty1Element :=  LinkedList new add: Link new; yourself.
	 "so that we can recognize this link"
	"nonEmpty := LinkedList with: link with: Link new."
	"otherList := LinkedList with: Link new with: Link new."
