#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>

#include "appstatus.h"
#include "knxinterface.h"
#include "knxobjectproxy.h"
#include "networkconfiguration.h"

int main(int argc, char *argv[])
{
    AppStatus *appStatus;

    appStatus = new AppStatus(KNXCACHED_IP_ADDRESS, KNXCACHED_PORT, NULL, LOCAL_NETWORK_SSID, SSH_SERVER, SSH_LOGIN, SSH_PASSWORD);

    qputenv("QT_IM_MODULE", QByteArray("qtvirtualkeyboard"));

    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
    QGuiApplication app(argc, argv);
    QQmlApplicationEngine engine;
    qmlRegisterType<KnxObjectProxy>("knx", 1, 0, "KnxObject");
    engine.rootContext()->setContextProperty("AppStatus", appStatus);
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));
    if (engine.rootObjects().isEmpty())
        return -1;

    int res = app.exec();

    delete appStatus;

    return res;
}
