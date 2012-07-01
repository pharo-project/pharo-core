menu
versionsHelpString
	^ 'Each entry in the list pane represents a version of the source code for the same method; the topmost entry is the current version, the next entry is the next most recent, etc.

To revert to an earlier version, select it (in the list pane) and then do any of the following:
  *  Choose "revert to this version" from the list pane menu.
  *  Hit the "revert" button,
  *  Type ENTER in the code pane
  *  Type cmd-s (alt-s) in the code pane.

The code pane shows the source for the selected version.  If "diffing" is in effect, then differences betwen the selected version and the version before it are pointed out in the pane.  Turn diffing on and off by choosing "toggle diffing" from the list pane menu, or hitting the "diffs" button, or hitting cmd-D when the cursor is over the list pane.

To get a comparison between the selected version and the current version, choose "compare to current" from the list pane menu or hit the "compare to current" button.  (This is meaningless if the current version is selected, and is unnecessary if you''re interested in diffs from between the current version and the next-most-recent version, since the standard in-pane "diff" feature will give you that.)

You can also compare the selected version with any other version using the "compare to version..." menu choice.

If further versions of the method in question have been submitted elsewhere since you launched a particular Versions Browser, it will still stay nicely up-to-date if you''re in Morphic and have asked that smart updating be maintained; if you''re in mvc or in morphic but with smart-updating turned off, a versions browser is only brought up to date when you activate its window (and when you issue "revert" from within it, of course,) and you can also use the "update list" command to make certain the versions list is up to date.

Hit the "remove from changes" button, or choose the corresponding command in the list pane menu, to have the method in question deleted from the current change set.  This is useful if you''ve put debugging code into a method, and now want to strip it out and cleanse your current change set of all memory of the excursion.

Note:  the annotation pane in versions browsers shows information about the *current* version of the method in the image, not about the selected version.'