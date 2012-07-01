menu actions
changeListMenu: aMenu
	"Fill aMenu up so that it comprises the primary changelist-browser menu"

	aMenu addTitle: 'change list'.
	aMenu addStayUpItemSpecial.

	aMenu addList: #(

	('FileIn selections'							fileInSelections						'Import the selected items into the image')
	('FileOut selections...	'						fileOutSelections						'create a new file containing the selected items')
	-
	('Compare to current'						compareToCurrentVersion			'Open a separate window which shows the text differences between the on-file version and the in-image version.' )
	('Toggle diffing (D)'							toggleDiffing						'Start or stop showing diffs in the code pane.')
	-
	('Select conflicts with any changeset'		selectAllConflicts					'Select methods in the file which also occur in any change-set in the system')
	('Select conflicts with current changeset'	selectConflicts						'Select methods in the file which also occur in the current change-set')
	('Select conflicts with...'						selectConflictsWith					'Allows you to designate a file or change-set against which to check for code conflicts.')
	-
	('Select unchanged definitions'				selectUnchangedDefinitions			'Select class definitions, class comments and methods in the file whose in-image versions are the same as their in-file counterparts' )
	('Select unchanged methods'					selectUnchangedMethods				'Select methods in the file whose in-image versions are the same as their in-file counterparts' )
	('Select new methods'						selectNewMethods					'Select methods in the file that do not current occur in the image')
	('Select methods for this class'				selectMethodsForThisClass			'Select all methods in the file that belong to the currently-selected class')
	('Select methods for classes in image'			selectMethodsForExtantClasses		'Select all methods in the file that belong to a class that exists in the image')
	('Select changes with contents matching'		selectContentsMatching				'Select all changes in the file whose text includes a pattern')

	-
	('Select all (a)'								selectAll								'Select all the items in the list')
	('Deselect all'								deselectAll							'Deselect all the items in the list')
	('Invert selections'							invertSelections						'Select every item that is not currently selected, and deselect every item that *is* currently selected')
	-
	('Browse all versions of single selection'			browseVersions		'Open a version browser showing the versions of the currently selected method')
	('Browse all versions of selections'			browseAllVersionsOfSelections		'Open a version browser showing all the versions of all the selected methods')
	('Browse current versions of selections'		browseCurrentVersionsOfSelections	'Open a message-list browser showing the current (in-image) counterparts of the selected methods')
	('Destroy current methods of selections'		destroyCurrentCodeOfSelections		'Remove (*destroy*) the in-image counterparts of all selected methods')
	-
	('Remove doIts'								removeDoIts							'Remove all items that are doIts rather than methods')
	('Remove older versions'						removeOlderMethodVersions			'Remove all but the most recent versions of methods in the list')
	('Remove up-to-date versions'				removeExistingMethodVersions		'Remove all items whose code is the same as the counterpart in-image code')
	('Remove selected items'						removeSelections					'Remove the selected items from the change-list')
	('Remove unselected items'					removeNonSelections					'Remove all the items not currently selected from the change-list')).

	^ aMenu

