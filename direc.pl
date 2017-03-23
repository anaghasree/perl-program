my @files;
my @direc;
@filer='cd new/;ls -l';
$exfile='^-';
$exdir='^d';
foreach $file (@filer)
{
if($file=~m{$exfile})
{
 @f1=split(/ /,$file);
push @files,$f1[scalar @f1-1];
}
if($file=~m{exdir})
{
@f2=split(/ /,$file);
push @direc,$f2[scalar @f2-1];
}
}
print "directories are\n";
foreach $file (@direc) {
print"\t $file \n";
}
print "files are";
foreach $file (@files)
{
print "\t $file \n";
}
