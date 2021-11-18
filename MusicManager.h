#ifndef MUSICMANAGER_H
#define MUSICMANAGER_H
//#include <QtAndroidExtras>
//#include <QAndroidJniObject>
#include <QObject>
#include <QString>
#include <QJniObject>
#include <QtDebug>

class MusicManager : public QObject{
    Q_OBJECT
public:
    explicit MusicManager (QObject* parent = 0) : QObject(parent) {}
    Q_INVOKABLE void test(){
         QJniObject musicManager = QJniObject("org/qtproject/example/musicmanager/MusicManager");
         QString str = musicManager.callObjectMethod<jstring>("test").toString();
         qDebug() << str;
    }

    Q_INVOKABLE void pause(){
        QJniObject musicManager = QJniObject("org/qtproject/example/musicmanager/MusicManager");
        //musicManager.callStaticObjectMethod("pause", "()V;");
        QString str = musicManager.callObjectMethod<jstring>("pause").toString();
        qDebug() << str;
    }

    Q_INVOKABLE void next(){
        QJniObject musicManager = QJniObject("org/qtproject/example/musicmanager/MusicManager");
        //musicManager.callStaticObjectMethod("pause", "()V;");
         QString str = musicManager.callObjectMethod<jstring>("next").toString();
         qDebug() << str;
    }

    Q_INVOKABLE void previous(){
        QJniObject musicManager = QJniObject("org/qtproject/example/musicmanager/MusicManager");
        //musicManager.callStaticObjectMethod("pause", "()V;");
         QString str = musicManager.callObjectMethod<jstring>("previous").toString();
         qDebug() << str;
    }
};
#endif // MUSICMANAGER_H
