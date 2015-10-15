#!/bin/bash
INKSCAPE="/usr/bin/inkscape"

OPTS="--without-gui --export-background-opacity=0"

if [ -z $1 ]; then
    echo "File not found"
    exit 0
fi

FILE=$1
NAMEFILE=$(basename $FILE | cut -d. -f1)
EXTENSION=$(basename $FILE | cut -d. -f2)


if [ $EXTENSION != 'svg' ]; then
    echo "You need inform a svg file "
    exit 0
fi

SVG=$1

DEST_LAUNCHER_ICONS=./launcher_icons
[ -d $DEST_LAUNCHER_ICONS ] || mkdir $DEST_LAUNCHER_ICONS

DEST_ACTION_ICONS=./actionbar_dialog_tab_icons
[ -d $DEST_ACTION_ICONS ] || mkdir $DEST_ACTION_ICONS

DEST_NOTIFICATIONS_ICONS=./notifications_icons
[ -d $DEST_NOTIFICATIONS_ICONS ] || mkdir $DEST_NOTIFICATIONS_ICONS

DEST_SMALL_CONTEXTUAL_ICONS=./small_contextual_icons
[ -d $DEST_SMALL_CONTEXTUAL_ICONS ] || mkdir $DEST_SMALL_CONTEXTUAL_ICONS

DEST_GOOGLE_PLAY_ICONS=./google_play
[ -d $DEST_GOOGLE_PLAY_ICONS ] || mkdir $DEST_GOOGLE_PLAY_ICONS

#launcher icons
"$INKSCAPE" -w48 $OPTS --export-png=$DEST_LAUNCHER_ICONS/"$NAMEFILE"_launcher_48.png $SVG
"$INKSCAPE" -w72 $OPTS --export-png=$DEST_LAUNCHER_ICONS/"$NAMEFILE"_launcher_72.png $SVG
"$INKSCAPE" -w96 $OPTS --export-png=$DEST_LAUNCHER_ICONS/"$NAMEFILE"_launcher_96.png $SVG
"$INKSCAPE" -w144 $OPTS --export-png=$DEST_LAUNCHER_ICONS/"$NAMEFILE"_launcher_144.png $SVG
"$INKSCAPE" -w192 $OPTS --export-png=$DEST_LAUNCHER_ICONS/"$NAMEFILE"_launcher_192.png $SVG

#action icons
"$INKSCAPE" -w24 $OPTS --export-png=$DEST_ACTION_ICONS/"$NAMEFILE"_24.png $SVG
"$INKSCAPE" -w36 $OPTS --export-png=$DEST_ACTION_ICONS/"$NAMEFILE"_36.png $SVG
"$INKSCAPE" -w48 $OPTS --export-png=$DEST_ACTION_ICONS/"$NAMEFILE"_48.png $SVG
"$INKSCAPE" -w72 $OPTS --export-png=$DEST_ACTION_ICONS/"$NAMEFILE"_72.png $SVG
"$INKSCAPE" -w96 $OPTS --export-png=$DEST_ACTION_ICONS/"$NAMEFILE"_96.png $SVG

#notifications icons
"$INKSCAPE" -w22 $OPTS --export-png=$DEST_NOTIFICATIONS_ICONS/"$NAMEFILE"_notifications_22.png $SVG
"$INKSCAPE" -w33 $OPTS --export-png=$DEST_NOTIFICATIONS_ICONS/"$NAMEFILE"_notifications_33.png $SVG
"$INKSCAPE" -w44 $OPTS --export-png=$DEST_NOTIFICATIONS_ICONS/"$NAMEFILE"_notifications_44.png $SVG
"$INKSCAPE" -w66 $OPTS --export-png=$DEST_NOTIFICATIONS_ICONS/"$NAMEFILE"_notifications_66.png $SVG
"$INKSCAPE" -w88 $OPTS --export-png=$DEST_NOTIFICATIONS_ICONS/"$NAMEFILE"_notifications_88.png $SVG

#small_contextual_icons
"$INKSCAPE" -w16 $OPTS --export-png=$DEST_SMALL_CONTEXTUAL_ICONS/"$NAMEFILE"_small_16.png $SVG
"$INKSCAPE" -w24 $OPTS --export-png=$DEST_SMALL_CONTEXTUAL_ICONS/"$NAMEFILE"_small_24.png $SVG
"$INKSCAPE" -w32 $OPTS --export-png=$DEST_SMALL_CONTEXTUAL_ICONS/"$NAMEFILE"_small_32.png $SVG
"$INKSCAPE" -w48 $OPTS --export-png=$DEST_SMALL_CONTEXTUAL_ICONS/"$NAMEFILE"_small_48.png $SVG
"$INKSCAPE" -w64 $OPTS --export-png=$DEST_SMALL_CONTEXTUAL_ICONS/"$NAMEFILE"_small_64.png $SVG

#google_play
"$INKSCAPE" -w512 $OPTS --export-png=$DEST_GOOGLE_PLAY_ICONS/"$NAMEFILE"_google_play_512.png $SVG
