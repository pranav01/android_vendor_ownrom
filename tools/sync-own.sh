#! /bin/bash
if [ -e ".repo" ]
then
. build/envsetup.sh
dir=$ANDROID_BUILD_TOP
tools=$dir/vendor/ownrom/tools
. $tools/colors
echo -e "$txtbld $cya Syncing OwnROM repositories......"
$normal
for repository in $(cat $tools/ownrom-repos)
do
echo -e "$bldred Syncing $repository"
cd $dir
echo -e "$bldblu  `repo sync $repository | grep -i 'fetching'`"
echo -e "$bldgrn Synced $repository"
done
$normal
else
echo -e "Please make sure you are running this is the root of your build directory"
exit;
fi




