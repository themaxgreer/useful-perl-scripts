useful-perl-scripts
===================

Name: Max Greer
Email: themaxgreer@gmail.com


Perl scripts I use to do tasks
moveFile.pl	- Script I use to move files after downloads
	-To use this file you need to change/add your regex and folders where you would like to move the file
	i.e. @files = grep(/regex/@allfiles) //search for files in all files in dir
	$tag = "toFolder/." //folder you want to move the files to
	moveFile($tag,@files) //subroutine to move all files to destination folder
