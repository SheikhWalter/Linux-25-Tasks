mkdir git_started
cd git_started
mkdir .git/{objects,refs/{heads,tags}} -p
echo "ref: refs/heads/master" > .git/HEAD
echo "Hello, World!" > hello.txt
git hash-object -w hello.txt  #it will output the hash code for the file
git update-index --add --cacheinfo 100644 8ab686eafeb1f44702738c8b0f24f2567c36da6d hello.txt
git write-tree   #it will output the hash code for the tree
git commit-tree bc225ea23f53f06c0c5bd3ba2be85c2120d68417 -m "greatest commit ever"
#now we have the hash code for the commit
echo "51f2630bfc52b13eddf6869e594e98e97d93acbb" > .git/refs/heads/master
#add the commit to the master branch
echo "51f2630bfc52b13eddf6869e594e98e97d93acbb" > .git/refs/tags/V1
#add tag to the commit
