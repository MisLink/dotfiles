DIR=$(dirname "$0")
pip config set global.index-url https://mirrors.aliyun.com/pypi/simple/
cp -v $DIR/flake8 ~/.flake8
