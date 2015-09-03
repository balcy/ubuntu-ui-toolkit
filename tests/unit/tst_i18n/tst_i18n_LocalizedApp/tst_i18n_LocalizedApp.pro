include(../../test-include.pri)
QT += gui
DEFINES += SRCDIR=\\\"$$PWD/\\\"

DOMAIN = localizedApp
mo.target = mo
mo.commands = set -e;
mo.commands += echo Generating localization;
mo.commands += msgfmt po/en_US.po -o $${DOMAIN}/share/locale/en/LC_MESSAGES/$${DOMAIN}.mo;
QMAKE_EXTRA_TARGETS += mo
PRE_TARGETDEPS += mo

SOURCES += \
    src/tst_i18n_LocalizedApp.cpp

OTHER_FILES += \
    src/LocalizedApp.qml
