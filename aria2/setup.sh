DIR=`dirname "$0"`

mkdir -vp ~/.aria2
cp -v $DIR/aria2.conf ~/.aria2/
touch ~/.aria2/aria2.session
