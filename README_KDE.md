# Misc fixes for KDE Plasma

## Time Format on Lock Screen

Sddm (the lock screen manager) doesn't respect your locale / time format selection and displays time in an/pm format.

To use 24-hour time (or any other custom format), find `Clock.qml` in `/usr/share/<some_path>` e.g.

/usr/share/plasma/look-and-feel/org.kde.breeze.desktop/contents/components/Clock.qml
/usr/share/sddm/themes/breeze/components/Clock.qml
/usr/share/sddm/themes/sugar-candy/Components/Clock.qml

and change lines that look like this:

`text: Qt.formatTime(timeSource.data["Local"]["DateTime"])` 

to

`text: Qt.formatTime(timeSource.data["Local"]["DateTime"], "h:mm")` 

(or any other format string).


