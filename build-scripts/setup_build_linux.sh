#!/bin/bash

# If executed in build-scripts then move up, otherwise just stay in pwd
DIR_SCRIPT="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
echo "DIR_SCRIPT" $DIR_SCRIPT
echo "PWD" $PWD
if [ "$DIR_SCRIPT" = "$PWD" ]; then
	cd ..
fi

# Create all the build folders
mkdir -p build-linux && cd "$_"
echo "Creating build folders in " $PWD
(mkdir x64-Debug && cd "$_" && cmake -DCMAKE_BUILD_TYPE=DEBUG -DBUILD_SHARED_LIBS=OFF ../..)
(mkdir x64-Release && cd "$_" && cmake -DCMAKE_BUILD_TYPE=DEBUG -DBUILD_SHARED_LIBS=ON ../..)

# Create script to build all configurations
# This runs make in each build folder
cat <<EOF > build_all.sh
#!/bin/bash
for d in *; do
	test -d "\$d" || continue
	(cd \$d && make)
done
EOF

# Create script to test all configurations
# This runs any test_* file in each build folder
cat <<EOF > test_all.sh
#!/bin/bash
for d in *; do
	test -d "\$d" || continue
	(cd \$d && for f in test_*; do ./\$f; done)
done
EOF