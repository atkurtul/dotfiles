

LDFLAGS=-L/usr/lib/x86_64-linux-gnu

./configure --with-features=huge \
  --enable-multibyte \
  --enable-cscope \
  --prefix=/usr \
  --enable-fontset \
  --disable-gui \
  --enable-cscope \
  --enable-luainterp=yes \
  --enable-pythoninterp=yes \
  --enable-python3interp=yes \
  --prefix=/usr \
  --with-lua-prefix=/usr \
  --enable-perlinterp \
  --enable-fail-if-missing \
  --with-python3-config-dir=/usr
