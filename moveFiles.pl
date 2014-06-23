#!/usr/bin/perl -w

#add this script to your download folder

sub moveFile{
	my ($tag,@files) = @_;
	foreach $file (@files) {
   		#remove print at end
		print "$file\n";
   		if(-f $file) {
			system("mv $file $tag");
   		}
   		if(-d $file) {
			system("mv -v \"$file\" $tag");
  		 }
	}
	
}
#open directory
opendir(DIR, ".");

#all files
@allFiles = grep !/^\./, readdir(DIR);

#Tag declarations
#add more tags for different folders
$tvTag = 'TV/.';
$movieTag = 'Movies/.';

#get files
@files = grep(/[Pp]arks/,@allFiles);
moveFile($tvTag,@files);

@movieFiles = grep(/[Mm]atrix/,@allFiles);
moveFile($movieTag,@movieFiles);

#close directory
closedir(DIR);
