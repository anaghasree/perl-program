$url=$ARGV[0];
open(<DATA>,$url);
while(<DATA>)
{
$content=$_;
$expr='(hrf|src)="([^"]*)"';
while($content=m{$expr}g)
{
print "LINK:$1\t $2 \n";
}
}

