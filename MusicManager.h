#ifndef MUSICMANAGER_H
#define MUSICMANAGER_H
#include <QtAndroidExtras>
#include <QAndroidJniObject>
#include <QObject>
#include <QString>

class MusicManager : public QObject{
    Q_OBJECT
public:
    explicit MusicManager (QObject* parent = 0) : QObject(parent) {}
    Q_INVOKABLE void test(){
         QAndroidJniObject musicManager = QAndroidJniObject("org/qtproject/example/musicmanager/MusicManager");
         QString str = musicManager.callObjectMethod<jstring>("test").toString();
         qDebug() << str;
    }

    Q_INVOKABLE void pause(){
        QAndroidJniObject musicManager = QAndroidJniObject("org/qtproject/example/musicmanager/MusicManager");
        //musicManager.callStaticObjectMethod("pause", "()V;");
        QString str = musicManager.callObjectMethod<jstring>("pause").toString();
        qDebug() << str;
    }

    Q_INVOKABLE void next(){
        QAndroidJniObject musicManager = QAndroidJniObject("org/qtproject/example/musicmanager/MusicManager");
        //musicManager.callStaticObjectMethod("pause", "()V;");
         QString str = musicManager.callObjectMethod<jstring>("next").toString();
         qDebug() << str;
    }

    Q_INVOKABLE void previous(){
        QAndroidJniObject musicManager = QAndroidJniObject("org/qtproject/example/musicmanager/MusicManager");
        //musicManager.callStaticObjectMethod("pause", "()V;");
         QString str = musicManager.callObjectMethod<jstring>("previous").toString();
         qDebug() << str;
    }
};
#endif // MUSICMANAGER_H
