defaultSpec
	"Define the layout of the Project Panel"

	<spec>
	^ SpecLayout composed
		newColumn: [ :c1 | 
					c1
						newRow: [ :r1 | 
									r1
										add: #projectsLabel origin: 0@0 corner: 1@1;
										add: #addProjectButton width: 50;
										add: #removeProjectButton width: 50;
										add: #editProjectButton width: 50]
							height: 25;
						add: #projectList;
						addSplitter;
						newRow: [ :r2 | 
									r2
										add: #groupsLabel origin: 0@0 corner: 1@1;
										add: #addGroupButton width: 50;
										add: #removeGroupButton width: 50]
							height: 25;
						add: #groupList;
						addSplitter;
						add: #packagesPanel ];
		yourself