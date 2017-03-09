# REXUS project VIPER: Elektronik and Software

### Structure of this repository

#### *boards*
* KiCAD and mechanical files for all PCBs used in the project.

#### *software/onboard*
* Code files of microcontroller software inside the rexus module.

#### *software/groundstation*
* Code files for the groundstation software (C++/Qt).

#### *docs*
* Documentation for all above.

### HowTo do changes to this repository

* Create a new branch: `git checkout -b feature/something-i-changed`
* Do your changes.
* Tell git what files your changed and want to commit: `git add my/file.changed my/other/file.changed`
* Commit your changes: `git commit -m "Description of my changes"`
* Push your changes to Github: `git push`
* Go to Github and create a new *Pull request* from your new branch to the *master* branch.
* Wait for someone to review and merge your Pull Request.
* Then checkout the *master* brach and pull the changes from Github: `git checkout master && git pull`

Use markdown syntax for text files and `*.md` file extension.
