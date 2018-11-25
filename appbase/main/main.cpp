#include <QApplication>
#include <QDebug>
#include <QDir>
#include <QStandardPaths>

#include "ABSettings.hpp"
#include "ABTheme.hpp"
#include "singletons/Fonts.hpp"
#include "widgets/BaseWindow.hpp"

int main(int argc, char *argv[])
{
    QApplication a(argc, argv);

    auto path =
        QStandardPaths::writableLocation(QStandardPaths::AppDataLocation);
    qDebug() << path;

    QDir(path).mkdir(".");

    new chatterino::Theme();
    new chatterino::Settings(path);
    new chatterino::Fonts();

    chatterino::BaseWindow widget(nullptr);
    widget.show();

    return a.exec();
}
