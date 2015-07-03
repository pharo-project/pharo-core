genReification: aSymbol for: aLink
	| plugin |

	plugin := (plugins at: aSymbol) node: node link: aLink.	
	 ^plugin perform: self selectorForNode