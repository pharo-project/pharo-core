instance creation
openBrowser
	"Create and schedule a BrowserView with default browser label. The
	view consists of five subviews, starting with the list view of system
	categories of SystemOrganization. The initial text view part is empty."

	| br |
	br := self new.
	^ self
		openBrowserView: (br openEditString: nil)
		label: br defaultBrowserTitle.

