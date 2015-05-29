#! /bin/bash
. $ANDROID_BUILD_TOP/vendor/ownrom/tools/colors
echo -e "$txtbld $cya Syncing OwnROM repositories......"
$normal
echo -e "$red Syncing (1/6), OwnROM Settings"
echo -e "$blu  `repo sync packages/apps/Settings | grep -i 'fetching'`"
echo -e "$grn (1/6) Synced"
echo -e "$red Syncing (2/6) OwnROM Frameworks Base"
echo -e "$blu `repo sync frameworks/base | grep -i 'fetching'`"
echo -e "$grn (2/6) Synced"
echo -e "$red Syncing (3/6) OwnROM Vendor"
echo -e "$blu `repo sync vendor/ownrom | grep -i 'fetching'`"
echo -e "$grn (3/6) Synced"
echo -e "$red Syncing (4/6) OwnROM Build System"
echo -e "$blu `repo sync build | grep -i 'fetching'`"
echo -e "$grn (4/6) Synced"
echo -e "$red Syncing (5/6) OwnROM Bionic"
echo -e "$blu `repo sync bionic | grep -i 'fetching'`"
echo -e "$grn (5/6) Synced"
echo -e "$red Syncing (6/6) OwnROM Manifest"
echo -e "$blu `repo sync android | grep -i 'fetching'`"
echo -e "$grn (6/6) Synced"
echo -e ""
echo -e ""
echo -e ""
echo -e ""
echo -e "$bldcya Sync $bldblu complete$normal !!"
$normal





