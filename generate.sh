#!/bin/bash
INKSCAPE="/usr/bin/inkscape"

OPTS="--without-gui --export-background-opacity=0"

SVG=icon.svg

DEST_LAUCHER_ICONS=./laucher_icons
[ -d $DEST_LAUCHER_ICONS ] || mkdir $DEST_LAUCHER_ICONS

DEST_ACTION_ICONS=./actionbar_dialog_tab_icons
[ -d $DEST_ACTION_ICONS ] || mkdir $DEST_ACTION_ICONS

DEST_NOTIFICATIONS_ICONS=./notifications_icons
[ -d $DEST_NOTIFICATIONS_ICONS ] || mkdir $DEST_NOTIFICATIONS_ICONS

DEST_SMALL_CONTEXTUAL_ICONS=./small_contextual_icons
[ -d $DEST_SMALL_CONTEXTUAL_ICONS ] || mkdir $DEST_SMALL_CONTEXTUAL_ICONS

DEST_GOOGLE_PLAY_ICONS=./google_play
[ -d $DEST_GOOGLE_PLAY_ICONS ] || mkdir $DEST_GOOGLE_PLAY_ICONS

#launcher icons
"$INKSCAPE" -w48 $OPTS --export-png=$DEST_LAUCHER_ICONS/Icon_Android48.png $SVG
"$INKSCAPE" -w72 $OPTS --export-png=$DEST_LAUCHER_ICONS/Icon_Android72.png $SVG
"$INKSCAPE" -w96 $OPTS --export-png=$DEST_LAUCHER_ICONS/Icon_Android96.png $SVG
"$INKSCAPE" -w144 $OPTS --export-png=$DEST_LAUCHER_ICONS/Icon_Android144.png $SVG
"$INKSCAPE" -w192 $OPTS --export-png=$DEST_LAUCHER_ICONS/Icon_Android192.png $SVG

#action icons
"$INKSCAPE" -w24 $OPTS --export-png=$DEST_ACTION_ICONS/Icon_Android24.png $SVG
"$INKSCAPE" -w36 $OPTS --export-png=$DEST_ACTION_ICONS/Icon_Android36.png $SVG
"$INKSCAPE" -w48 $OPTS --export-png=$DEST_ACTION_ICONS/Icon_Android48.png $SVG
"$INKSCAPE" -w72 $OPTS --export-png=$DEST_ACTION_ICONS/Icon_Android72.png $SVG
"$INKSCAPE" -w96 $OPTS --export-png=$DEST_ACTION_ICONS/Icon_Android96.png $SVG

#notifications icons
"$INKSCAPE" -w22 $OPTS --export-png=$DEST_NOTIFICATIONS_ICONS/Icon_Android22.png $SVG
"$INKSCAPE" -w33 $OPTS --export-png=$DEST_NOTIFICATIONS_ICONS/Icon_Android33.png $SVG
"$INKSCAPE" -w44 $OPTS --export-png=$DEST_NOTIFICATIONS_ICONS/Icon_Android44.png $SVG
"$INKSCAPE" -w66 $OPTS --export-png=$DEST_NOTIFICATIONS_ICONS/Icon_Android66.png $SVG
"$INKSCAPE" -w88 $OPTS --export-png=$DEST_NOTIFICATIONS_ICONS/Icon_Android88.png $SVG

#small_contextual_icons
"$INKSCAPE" -w16 $OPTS --export-png=$DEST_SMALL_CONTEXTUAL_ICONS/Icon_Android16.png $SVG
"$INKSCAPE" -w24 $OPTS --export-png=$DEST_SMALL_CONTEXTUAL_ICONS/Icon_Android24.png $SVG
"$INKSCAPE" -w32 $OPTS --export-png=$DEST_SMALL_CONTEXTUAL_ICONS/Icon_Android32.png $SVG
"$INKSCAPE" -w48 $OPTS --export-png=$DEST_SMALL_CONTEXTUAL_ICONS/Icon_Android48.png $SVG
"$INKSCAPE" -w64 $OPTS --export-png=$DEST_SMALL_CONTEXTUAL_ICONS/Icon_Android64.png $SVG

#google_play
"$INKSCAPE" -w512 $OPTS --export-png=$DEST_GOOGLE_PLAY_ICONS/Icon_Android512.png $SVG
