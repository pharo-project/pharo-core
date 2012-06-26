self releaseMenu

Pharo Process Description


---
Here is the pharo process.

General points
-----------------------
An enhancement
	- should be added to the bug tracker
	- announced to the mailing-list
	- asked for feedback 
	- results should be added to the BT entry

Fixed tag means ready for integration
Closed tag means integrated

A bug detected
	- discuss via the mailing-list
	- should be added to the bug tracker
	- fix are considered as enh (see point above)

When a fix is fixed it should be either post as cs to the BT entry or in the PharoInbox
as a Slice (a slice is an emtpy package that has as requirement other package composing the fix).

We have three projects:
	Pharo
	PharoInbox
	PharoTreatedInbox

A fix goes either from inbox to treatedInbox or to Pharo.
If a fix does not work it is moved to the TreatedInbox.
If a fix works it is integrated as follow - it will be moved from the Inbox to the TreatedInbox
and integrated and published in the Pharo project

To help browsing multiple repositories:

ScriptLoader new addExtraRepositories


+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Now the integration works in 4 main steps which can be steered by the following expression
ScriptLoader releaseMenu
or via the menu that can be shown/hidden using 
	ScriptLoader showIntegrationMenu
	ScriptLoader hideIntegrationMenu


1.) Start up a recent and clean image
	ScriptLoader new prepareNewUpdate
	
	This step will 
		- load the latest updates
		- load the latest ScriptLoader package from the Pharo repository.
		Indeed when we work on improving the ScriptLoader it may not be published in the update stream. 
		New versions can be available on the server but not part of the latest updates.
		Therefore the process always loads the latest version of scriptloader from the pharo repository.
		This point is important because when an integration failed, you have to check and optionally 
		remove the scriptloader package from the pharo repository.
		
		- check that the update.list (which contains the cs to load the packages) is in sync
		with the image current version. You have to download the latest version using a script like this one.
		Pay attention to update it so that it reflects the right version (ie 1.0, 1.1, 1.2...)
		     scp -p LOGIN@scm.gforge.inria.fr:/home/groups/pharo/htdocs/updates/pharo1.1/updates.list .
		- snapshot the package version to detect dirty or changed but non dirty packages.

2.) Apply changes

	ScriptLoader new doneApplyingChanges
	
	This step will 
		- create an update method with can trigger the load of the packages and some pre/post actions
		- create a script method with describes all the package versions and it used by the update methods
		- save all the packages that are different (except some filtered packages)	
		into a local folder named package-to-be-tested.
		ScriptLoader, SLICE*.... and a couple of other packages are not considered to be included in the script method
			(check method packagesNotToSavePatternNames)
		

3.) Verify changes
	==> in a ***new*** image (in the current folder) execute:
	ScriptLoader new verifyNewUpdate

	This step will 
		- load in any order (so may break) the package previously saved
		in the packages to be tested.
		- this step is important because you may get simple changes with unexpected side effects and that 
		may break the load.
		

4.) If there are problems go to 2.) to fix them, else:
	ScriptLoader new publishChanges

	This step will
		- generate a new cs file whose purpose is to load the given version of the scriptloader and trigger the 
		correct update method.
		- add the name of the cs file to the end of the updates.list file local to the disc
		- copy all the package from the local directory to the Pharo
		
	After the updates.list and the cs file should be manually uploaded to the ftp (see below) 
	   scp "$1" LOGIN@scm.gforge.inria.fr:/home/groups/pharo/htdocs/updates/pharo1.1/
	

5) in case of problems.
Think that if you pass the step 4 you may have a scriptLoader version that got published and that is reloaded 
during the first step.



CurrentMajorVersionNumber should contains a string '1.0', '1.1'....
This string will determine on which folder on the server the updates.list should be loaded.
	i.e., updates/pharo1.0, updates/pharo1.1 ....

--- Not to forget ---
To change the release stream
add a new method for each releaseStream
	ScriptLoader toPharoOne
	ScriptLoader toPharoOneDotOne
