#! /bin/bash
if [ -e ".repo" ]
then
. build/envsetup.sh > /dev/null
dir=$ANDROID_BUILD_TOP
tools=$dir/vendor/ownrom/tools
. $tools/colors
echo -e "$bldblu Syncing OwnROM repositories......"
$normal
for repository in $(cat $tools/ownrom-repos)
do
cd $dir
echo -e "$bldred Syncing $repository"
echo -e "$bldcya  `repo sync $repository | grep -i 'fetching'`"
echo -e "$bldgrn Synced $repository"
echo -e ""
done
$normal
else
echo -e "Please make sure you are running this is the root of your build directory"
exit;
fi




