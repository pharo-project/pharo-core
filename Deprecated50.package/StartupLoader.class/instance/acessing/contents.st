contents
^'
Pharo 2.0 introduced StartupLoader for performing common actions on a fresh image.  Since Pharo 3.0 this was renamed in favour of StartupPreferencesLoader. 

Some of your startup preference files need to be updated to change StartupLoader to StartupPreferenceLoader. To edit these, evaluate the following line:

  StartupPreferencesHandler new perform inspect'