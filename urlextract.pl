$file=$ARGV[0];
open(data,$file);
print "arg :\t\t value:\n";
while(<data>)
{
$string =$_;
$pos=index($string,'?');
$sub=substr($string ,$pos+1);
@param=split(/\&/,$sub);
foreach $i (@param)
{
@stmnt=split(/\=/,$i);
$size=scalar(@stmnt);
for($j=0;$j<$size;$j=$j+1)
{
print" $stmnt[$j] \t\t";
}
print"\n";
}
}
