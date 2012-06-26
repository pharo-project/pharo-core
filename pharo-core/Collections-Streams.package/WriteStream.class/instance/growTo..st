private
growTo: anInteger
 
    " anInteger is the required minimal new size of the collection "
 	| oldSize grownCollection newSize |
 	oldSize := collection size.
      newSize := anInteger + (oldSize // 4 max: 20).
 	grownCollection := collection class new: newSize.
 	collection := grownCollection replaceFrom: 1 to: oldSize with: collection startingAt: 1.
 	writeLimit := collection size.
 