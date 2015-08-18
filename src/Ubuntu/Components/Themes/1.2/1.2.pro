TEMPLATE=aux

CONFIG+=ubuntu_qml_module

uri = Ubuntu.Components.Themes
installPath = $$[QT_INSTALL_QML]/$$replace(uri, \\., /)/1.2

message(Theme install path $$installPath)

QML_FILES = *.qml

qml_files.installPath = $$installPath
qml_files.files = $$QML_FILES

UBUNTU_QML_MODULE_FILES += qml_files
