ui_print "- Migrating fonts.xml"
[[ -d /sbin/.magisk/mirror ]] && MIRRORPATH=/sbin/.magisk/mirror || unset MIRRORPATH
FILE=fonts.xml
FILEPATH=/system/etc/
if [ -f $MIRRORPATH$FILEPATH$FILE ]; then
mkdir -p $MODPATH$FILEPATH
cp -af $MIRRORPATH$FILEPATH$FILE $MODPATH$FILEPATH$FILE
sed -i '
    /<family lang=\"zh-Hans\">/,/<\/family>/ {/<\/family>/! d;
    /<\/family>/ s/.*/<family lang="zh-Hans">\n<font weight="100" style="normal" index="2">NotoSansCJK-Thin.ttc<\/font>\n<font weight="300" style="normal" index="2">NotoSansCJK-Light.ttc<\/font>\n<font weight="350" style="normal" index="2">NotoSansCJK-DemiLight.ttc<\/font>\n<font weight="400" style="normal" index="2">NotoSansCJK-Regular.ttc<\/font>\n<font weight="500" style="normal" index="2">NotoSansCJK-Medium.ttc<\/font>\n<font weight="700" style="normal" index="2">NotoSansCJK-Bold.ttc<\/font>\n<font weight="900" style="normal" index="2">NotoSansCJK-Black.ttc<\/font>\n<font weight="200" style="normal" index="2" fallbackFor="serif">NotoSerifCJK-ExtraLight.ttc<\/font>\n<font weight="300" style="normal" index="2" fallbackFor="serif">NotoSerifCJK-Light.ttc<\/font>\n<font weight="400" style="normal" index="2" fallbackFor="serif">NotoSerifCJK-Regular.ttc<\/font>\n<font weight="500" style="normal" index="2" fallbackFor="serif">NotoSerifCJK-Medium.ttc<\/font>\n<font weight="600" style="normal" index="2" fallbackFor="serif">NotoSerifCJK-SemiBold.ttc<\/font>\n<font weight="700" style="normal" index="2" fallbackFor="serif">NotoSerifCJK-Bold.ttc<\/font>\n<font weight="900" style="normal" index="2" fallbackFor="serif">NotoSerifCJK-Black.ttc<\/font>\n<\/family>/};
    /<family lang=\"zh-Hant\">/,/<\/family>/ {/<\/family>/! d;
    /<\/family>/ s/.*/<family lang="zh-Hant">\n<font weight="100" style="normal" index="3">NotoSansCJK-Thin.ttc<\/font>\n<font weight="300" style="normal" index="3">NotoSansCJK-Light.ttc<\/font>\n<font weight="350" style="normal" index="3">NotoSansCJK-DemiLight.ttc<\/font>\n<font weight="400" style="normal" index="3">NotoSansCJK-Regular.ttc<\/font>\n<font weight="500" style="normal" index="3">NotoSansCJK-Medium.ttc<\/font>\n<font weight="700" style="normal" index="3">NotoSansCJK-Bold.ttc<\/font>\n<font weight="900" style="normal" index="3">NotoSansCJK-Black.ttc<\/font>\n<font weight="200" style="normal" index="3" fallbackFor="serif">NotoSerifCJK-ExtraLight.ttc<\/font>\n<font weight="300" style="normal" index="3" fallbackFor="serif">NotoSerifCJK-Light.ttc<\/font>\n<font weight="400" style="normal" index="3" fallbackFor="serif">NotoSerifCJK-Regular.ttc<\/font>\n<font weight="500" style="normal" index="3" fallbackFor="serif">NotoSerifCJK-Medium.ttc<\/font>\n<font weight="600" style="normal" index="3" fallbackFor="serif">NotoSerifCJK-SemiBold.ttc<\/font>\n<font weight="700" style="normal" index="3" fallbackFor="serif">NotoSerifCJK-Bold.ttc<\/font>\n<font weight="900" style="normal" index="3" fallbackFor="serif">NotoSerifCJK-Black.ttc<\/font>\n<\/family>/};
    /<family lang=\"zh-Bopo\">/,/<\/family>/ {/<\/family>/! d;
    /<\/family>/ s/.*/<family lang="zh-Bopo">\n<font weight="100" style="normal" index="3">NotoSansCJK-Thin.ttc<\/font>\n<font weight="300" style="normal" index="3">NotoSansCJK-Light.ttc<\/font>\n<font weight="350" style="normal" index="3">NotoSansCJK-DemiLight.ttc<\/font>\n<font weight="400" style="normal" index="3">NotoSansCJK-Regular.ttc<\/font>\n<font weight="500" style="normal" index="3">NotoSansCJK-Medium.ttc<\/font>\n<font weight="700" style="normal" index="3">NotoSansCJK-Bold.ttc<\/font>\n<font weight="900" style="normal" index="3">NotoSansCJK-Black.ttc<\/font>\n<font weight="200" style="normal" index="3" fallbackFor="serif">NotoSerifCJK-ExtraLight.ttc<\/font>\n<font weight="300" style="normal" index="3" fallbackFor="serif">NotoSerifCJK-Light.ttc<\/font>\n<font weight="400" style="normal" index="3" fallbackFor="serif">NotoSerifCJK-Regular.ttc<\/font>\n<font weight="500" style="normal" index="3" fallbackFor="serif">NotoSerifCJK-Medium.ttc<\/font>\n<font weight="600" style="normal" index="3" fallbackFor="serif">NotoSerifCJK-SemiBold.ttc<\/font>\n<font weight="700" style="normal" index="3" fallbackFor="serif">NotoSerifCJK-Bold.ttc<\/font>\n<font weight="900" style="normal" index="3" fallbackFor="serif">NotoSerifCJK-Black.ttc<\/font>\n<\/family>/};
    /<family lang=\"zh-Hant zh-Bopo\">/,/<\/family>/ {/<\/family>/! d;
    /<\/family>/ s/.*/<family lang="zh-Hant zh-Bopo">\n<font weight="100" style="normal" index="3">NotoSansCJK-Thin.ttc<\/font>\n<font weight="300" style="normal" index="3">NotoSansCJK-Light.ttc<\/font>\n<font weight="350" style="normal" index="3">NotoSansCJK-DemiLight.ttc<\/font>\n<font weight="400" style="normal" index="3">NotoSansCJK-Regular.ttc<\/font>\n<font weight="500" style="normal" index="3">NotoSansCJK-Medium.ttc<\/font>\n<font weight="700" style="normal" index="3">NotoSansCJK-Bold.ttc<\/font>\n<font weight="900" style="normal" index="3">NotoSansCJK-Black.ttc<\/font>\n<font weight="200" style="normal" index="3" fallbackFor="serif">NotoSerifCJK-ExtraLight.ttc<\/font>\n<font weight="300" style="normal" index="3" fallbackFor="serif">NotoSerifCJK-Light.ttc<\/font>\n<font weight="400" style="normal" index="3" fallbackFor="serif">NotoSerifCJK-Regular.ttc<\/font>\n<font weight="500" style="normal" index="3" fallbackFor="serif">NotoSerifCJK-Medium.ttc<\/font>\n<font weight="600" style="normal" index="3" fallbackFor="serif">NotoSerifCJK-SemiBold.ttc<\/font>\n<font weight="700" style="normal" index="3" fallbackFor="serif">NotoSerifCJK-Bold.ttc<\/font>\n<font weight="900" style="normal" index="3" fallbackFor="serif">NotoSerifCJK-Black.ttc<\/font>\n<\/family>/};
    /<family lang=\"zh-Hant,zh-Bopo\">/,/<\/family>/ {/<\/family>/! d;
    /<\/family>/ s/.*/<family lang="zh-Hant,zh-Bopo">\n<font weight="100" style="normal" index="3">NotoSansCJK-Thin.ttc<\/font>\n<font weight="300" style="normal" index="3">NotoSansCJK-Light.ttc<\/font>\n<font weight="350" style="normal" index="3">NotoSansCJK-DemiLight.ttc<\/font>\n<font weight="400" style="normal" index="3">NotoSansCJK-Regular.ttc<\/font>\n<font weight="500" style="normal" index="3">NotoSansCJK-Medium.ttc<\/font>\n<font weight="700" style="normal" index="3">NotoSansCJK-Bold.ttc<\/font>\n<font weight="900" style="normal" index="3">NotoSansCJK-Black.ttc<\/font>\n<font weight="200" style="normal" index="3" fallbackFor="serif">NotoSerifCJK-ExtraLight.ttc<\/font>\n<font weight="300" style="normal" index="3" fallbackFor="serif">NotoSerifCJK-Light.ttc<\/font>\n<font weight="400" style="normal" index="3" fallbackFor="serif">NotoSerifCJK-Regular.ttc<\/font>\n<font weight="500" style="normal" index="3" fallbackFor="serif">NotoSerifCJK-Medium.ttc<\/font>\n<font weight="600" style="normal" index="3" fallbackFor="serif">NotoSerifCJK-SemiBold.ttc<\/font>\n<font weight="700" style="normal" index="3" fallbackFor="serif">NotoSerifCJK-Bold.ttc<\/font>\n<font weight="900" style="normal" index="3" fallbackFor="serif">NotoSerifCJK-Black.ttc<\/font>\n<\/family>/};
    /<family lang=\"ja\">/,/<\/family>/ {/<\/family>/! d;
    /<\/family>/ s/.*/<family lang="ja">\n<font weight="100" style="normal" index="0">NotoSansCJK-Thin.ttc<\/font>\n<font weight="300" style="normal" index="0">NotoSansCJK-Light.ttc<\/font>\n<font weight="350" style="normal" index="0">NotoSansCJK-DemiLight.ttc<\/font>\n<font weight="400" style="normal" index="0">NotoSansCJK-Regular.ttc<\/font>\n<font weight="500" style="normal" index="0">NotoSansCJK-Medium.ttc<\/font>\n<font weight="700" style="normal" index="0">NotoSansCJK-Bold.ttc<\/font>\n<font weight="900" style="normal" index="0">NotoSansCJK-Black.ttc<\/font>\n<font weight="200" style="normal" index="0" fallbackFor="serif">NotoSerifCJK-ExtraLight.ttc<\/font>\n<font weight="300" style="normal" index="0" fallbackFor="serif">NotoSerifCJK-Light.ttc<\/font>\n<font weight="400" style="normal" index="0" fallbackFor="serif">NotoSerifCJK-Regular.ttc<\/font>\n<font weight="500" style="normal" index="0" fallbackFor="serif">NotoSerifCJK-Medium.ttc<\/font>\n<font weight="600" style="normal" index="0" fallbackFor="serif">NotoSerifCJK-SemiBold.ttc<\/font>\n<font weight="700" style="normal" index="0" fallbackFor="serif">NotoSerifCJK-Bold.ttc<\/font>\n<font weight="900" style="normal" index="0" fallbackFor="serif">NotoSerifCJK-Black.ttc<\/font>\n<\/family>/};
    /<family lang=\"ko\">/,/<\/family>/ {/<\/family>/! d;
    /<\/family>/ s/.*/<family lang="ko">\n<font weight="100" style="normal" index="1">NotoSansCJK-Thin.ttc<\/font>\n<font weight="300" style="normal" index="1">NotoSansCJK-Light.ttc<\/font>\n<font weight="350" style="normal" index="1">NotoSansCJK-DemiLight.ttc<\/font>\n<font weight="400" style="normal" index="1">NotoSansCJK-Regular.ttc<\/font>\n<font weight="500" style="normal" index="1">NotoSansCJK-Medium.ttc<\/font>\n<font weight="700" style="normal" index="1">NotoSansCJK-Bold.ttc<\/font>\n<font weight="900" style="normal" index="1">NotoSansCJK-Black.ttc<\/font>\n<font weight="200" style="normal" index="1" fallbackFor="serif">NotoSerifCJK-ExtraLight.ttc<\/font>\n<font weight="300" style="normal" index="1" fallbackFor="serif">NotoSerifCJK-Light.ttc<\/font>\n<font weight="400" style="normal" index="1" fallbackFor="serif">NotoSerifCJK-Regular.ttc<\/font>\n<font weight="500" style="normal" index="1" fallbackFor="serif">NotoSerifCJK-Medium.ttc<\/font>\n<font weight="600" style="normal" index="1" fallbackFor="serif">NotoSerifCJK-SemiBold.ttc<\/font>\n<font weight="700" style="normal" index="1" fallbackFor="serif">NotoSerifCJK-Bold.ttc<\/font>\n<font weight="900" style="normal" index="1" fallbackFor="serif">NotoSerifCJK-Black.ttc<\/font>\n<\/family>/};
    /^$/d' $MODPATH$FILEPATH$FILE
    if [ ! $(cat $MODPATH$FILEPATH$FILE|grep DroidSansFallback.ttf) ]; then
    sed -i 's/<\/familyset>/<family>\n<font weight="400" style="normal">DroidSansFallback.ttf<\/font>\n<\/family>\n<\/familyset>/g' $MODPATH$FILEPATH$FILE
    fi
else
ui_print "- Migration FAILED. Nothing have done to your system."
fi

rm $MODPATH/LICENSE* $MODPATH/*.py 2>/dev/null
