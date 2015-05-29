#! /bin/bash
if [ -e ".repo" ]
then
. build/envsetup.sh
. $ANDROID_BUILD_TOP/vendor/ownrom/tools/colors
echo -e "$txtbld $cya Syncing OwnROM repositories......"
$normal
for repository in $(cat . $ANDROID_BUILD_TOP/vendor/ownrom/tools/ownrom-repos)
do
echo -e "$red Syncing $repository"
cd $ANDROID_BUILD_TOP
echo -e "$blu  `repo sync $repository | grep -i 'fetching'`"
echo -e "$grn Synced $repository"
done
$normal
else
echo -e "Please make sure you are running this is the root of your build directory"
exit;
fi




