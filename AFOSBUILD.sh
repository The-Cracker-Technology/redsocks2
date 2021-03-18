rm -rf /opt/ANDRAX/redsocks2
mkdir /opt/ANDRAX/redsocks2

cp -Rf andraxbin/* /opt/ANDRAX/bin/
chmod -R 755 /opt/ANDRAX/bin/*

git apply patches/disable-ss.patch

make
strip redsocks2

cp -Rf redsocks2  redsocks2.service  redsocks.conf.example /opt/ANDRAX/redsocks2
chmod -R 755 /opt/ANDRAX/redsocks2
