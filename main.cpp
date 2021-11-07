#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include "IntentHandler.h"
#include "MusicManager.h"

int main(int argc, char *argv[])
{
#if QT_VERSION < QT_VERSION_CHECK(6, 0, 0)
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
#endif
//    if(QAndroidJniObject::isClassAvailable("org/qtproject/example/musicmanager/MusicManager")){
//        QAndroidJniObject musicManager = QAndroidJniObject("org/qtproject/example/musicmanager/MusicManager");
//        qDebug() << musicManager.callObjectMethod<jstring>("test").toString();
//    } else {
//        qDebug() << "Class not initialized or sumthing";
//    }
    QGuiApplication app(argc, argv);
    qmlRegisterType<IntentHandler>("com.myself", 1, 0, "IntentHandler");
    qmlRegisterType<MusicManager>("com.music", 1, 0, "MusicManager");
    QQmlApplicationEngine engine;
    const QUrl url(QStringLiteral("qrc:/main.qml"));
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
                     &app, [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    }, Qt::QueuedConnection);
    engine.load(url);

    return app.exec();
}
