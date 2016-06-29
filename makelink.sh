dir=`pwd`
for f in `echo .??*` 
do
	ln -s $dir/$f ../$f
done
