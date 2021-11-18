//#ifndef INTENTHANDLER_H
//#define INTENTHANDLER_H
//#include <QAndroidIntent>
//#include <QtAndroid>
//#include <QObject>

//class IntentHandler : public QObject{
//    Q_OBJECT
//public:
//    explicit IntentHandler (QObject* parent = 0) : QObject(parent) {}
//    Q_INVOKABLE void goToSettings() {
//        const QAndroidJniObject ACTION_SETTINGS = QAndroidJniObject::getStaticObjectField("android/provider/Settings",
//                                                                                          "ACTION_SETTINGS",
//                                                                                          "Ljava/lang/String;");
//        if (ACTION_SETTINGS.isValid()) {
//            const QAndroidIntent intent(ACTION_SETTINGS.toString());
//            QtAndroid::startActivity(intent.handle(), 10101);
//        }
//    }
//};

//#endif // INTENTHANDLER_H
