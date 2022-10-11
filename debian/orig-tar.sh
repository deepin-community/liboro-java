#!/bin/sh -e

# called by uscan with '--upstream-version' <version> <file>
DIR=liboro-java-$2.orig
TAR=../liboro-java_$2.orig.tar.gz
VERSION=$(echo $2 | sed 's/a$//')

# clean up the upstream tarball
tar xvfz $3
rm -f $3
mv jakarta-oro-$VERSION $DIR
GZIP=--best tar czf $TAR --exclude docs/api --exclude *.jar --exclude *.class $DIR
rm -rf $DIR

exit 0
