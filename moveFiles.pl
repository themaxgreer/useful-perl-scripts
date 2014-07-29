#!/usr/bin/perl -w
use strict;
use warnings;

#add this script to your download folder

sub moveFile{
	my ($tag,@files) = @_;
	foreach my $file (@files) {
   		if(-f $file) {
			system("mv $file $tag");
   		}
   		elsif(-d $file) {
			system("mv -v \"$file\" $tag");
  		}
   		#print so you know where the files are going
		print "$file to $tag\n";
	}
	
}
#open directory
opendir(DIR, ".");

#all files
my @allFiles = grep !/^\./, readdir(DIR);

#Tag declarations
#add more tags for different folders
my $tvTag = 'TV/.';
my $movieTag = 'Movies/.';

#get files
my @files = grep(/[Pp]arks/,@allFiles);
moveFile($tvTag,@files);

my @movieFiles = grep(/[Mm]atrix/,@allFiles);
moveFile($movieTag,@movieFiles);

#close directory
closedir(DIR);
