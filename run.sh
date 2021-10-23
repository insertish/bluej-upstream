#!/bin/sh
# Taken from BlueJ package on Arch repositories.
if [ -e /usr/lib/jvm/java-11-openjfx/lib ]; then
        JAVAFXPATH=/usr/lib/jvm/java-11-openjfx
else
        JAVAFXPATH=/usr/lib/jvm/java-11-openjdk
fi

CP="lib/bluej.jar"
JAVAFXJARS="$JAVAFXPATH/lib/javafx.base.jar"
JAVAFXJARS="$JAVAFXJARS:$JAVAFXPATH/lib/javafx.controls.jar"
JAVAFXJARS="$JAVAFXJARS:$JAVAFXPATH/lib/javafx.fxml.jar"
JAVAFXJARS="$JAVAFXJARS:$JAVAFXPATH/lib/javafx.graphics.jar"
JAVAFXJARS="$JAVAFXJARS:$JAVAFXPATH/lib/javafx.media.jar"
JAVAFXJARS="$JAVAFXJARS:$JAVAFXPATH/lib/javafx.properties.jar"
JAVAFXJARS="$JAVAFXJARS:$JAVAFXPATH/lib/javafx.swing.jar"
JAVAFXJARS="$JAVAFXJARS:$JAVAFXPATH/lib/javafx.web.jar"
CP="$CP:$JAVAFXJARS"
JFXRTOPT="-javafxpath=$JAVAFXPATH"
JFXRTOPT2="-javafxjars=$JAVAFXJARS"

archlinux-java-run -a 11 -b 11 -- \
        -Djdk.gtk.version=2 \
        -Dawt.useSystemAAFontSettings=on -Xmx512M \
        -cp "$CP" bluej.Boot ${JFXRTOPT:+"$JFXRTOPT"} ${JFXRTOPT2:+"$JFXRTOPT2"} \
        "$@"
