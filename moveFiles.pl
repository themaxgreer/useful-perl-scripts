#!/usr/bin/perl -w
use strict;
use warnings;

#add this script to your download folder

sub moveFile{
	my ($tag,@files) = @_;
	foreach my $file (@files) {
		#will print where the file goes as well
		if(-f $file) { 
			#it is a file
			system("mv -v $file $tag"); 		
   		}
   		elsif(-d $file) {
			#it is a directory
			system("mv -v \"$file\" $tag");
  		}
	}
	
}
#open directory
opendir(DIR, ".");

#all files
my @allFiles = grep !/^\./, readdir(DIR);

#Tag declarations
#add more tags for different folders
my $tvTag = 'TV/';
my $movieTag = 'Movies/';

#get files
my @files = grep(/[Pp]arks/,@allFiles);
moveFile($tvTag,@files);

my @movieFiles = grep(/[Mm]atrix/,@allFiles);
moveFile($movieTag,@movieFiles);

#close directory
closedir(DIR);
