#include <QApplication>

#include "widgets/BaseWidget.hpp"

int main(int argc, char *argv[])
{
    QApplication a(argc, argv);

    chatterino::BaseWindow widget(nullptr);
    widget.show();

    return a.exec();
}
