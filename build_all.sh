set -e

for fir in */ ; do
  cd $dir
  bundle install
  rake
  cd..
done
