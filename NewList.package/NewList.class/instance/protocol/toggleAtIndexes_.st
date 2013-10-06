toggleAtIndexes: anIndex
	| bool |

	bool := selectedIndexes at: anIndex ifAbsent: [ false ].
	selectedIndexes at: anIndex put: bool not