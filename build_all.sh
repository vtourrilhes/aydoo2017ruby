set -e

for fir in */ ; do
  cd $dir
  rake
  cd..
done
