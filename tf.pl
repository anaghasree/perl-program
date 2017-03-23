#!/usr/bin/perl
$file=$ARGV[0];
open(data,$file);
print"arg:\t\t value:\n";
while(<data>)
{
  $string=$_;
$pos=intex($string,'w');
$sub=substr($string,$pos+1);
@param=split(/\&/,$sub);
foreach $i(@param)
{  
  @stmt=split(/\=/,$i);
$size=scalar(@stmt);
for($j=0;$j<$size;$j+1)
{
  printf("$stmt[$j]\t\t");
}
printf("\n");
}
