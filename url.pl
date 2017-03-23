
#!/usr/bin/perl
$url=$ARGV[0];
open(DATA,$url);
while(<DATA>)
{

$content=$_;
@check=split(" ",$content);
$size=scalar(@check);
if($size>1)
{
print "\ninvalid URL is $content\n";
}
else
{
$expr='^(((ht|f)tps?)?\:\/\/)[a-z0-9]+(\.[a-z0-9]+)*(\.com|\.in|\.org|\.[a-z0-9])*[-#_&\?=a-z0-9]*(\.)*([a-z0-9])*';

if($content=m{$expr}g)
{
print "\n valid URL is $content \n";
}
else
{
print "\n Invalid URL is $content \n";
}

}}
