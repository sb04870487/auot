#! /bin/bash
cd E/auto/123
while true
do
fc="$(ls | wc -l)"
if [ $fc -gt 0 ];
then
FILES=/E/auto/123/*
for f in $FILES
do
/mingw64/bin/git add $f
/mingw64/bin/git commit -m "$(date +%H-%M-%S)"
/mingw64/bin/git remote add origin https://github.com/sb04870487/iii.git
/mingw64/bin/git push -u origin master
/mingw64/bin/git remote remove origin
done
fi;
rm -rf /E/auto/123/*
sleep 3
done