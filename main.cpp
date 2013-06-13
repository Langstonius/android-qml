#include <QtGui/QGuiApplication>
#include "qtquick2applicationviewer.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QString device = "";
    app.setApplicationDisplayName("Qt Test App");
    app.setApplicationName("Qt 5.0.1 for Android Test App.");

    QtQuick2ApplicationViewer viewer;
    viewer.setMainQmlFile(QStringLiteral("qml/Android-5-1/main.qml"));
    viewer.showExpanded();

    return app.exec();
}
