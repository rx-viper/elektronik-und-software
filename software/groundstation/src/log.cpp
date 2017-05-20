#include "log.h"

#include <QTime>
#include <QScrollBar>

Log::Log()
{

}

void Log::setTextEdit(QPlainTextEdit *plainTextEdit) {
    textEdit = plainTextEdit;
}

void Log::setAutoScroll(bool newAutoScrollState) {
    if((autoScroll = newAutoScrollState)) {
        scrollDown();
    }
}

void Log::scrollDown() {
    QScrollBar *vscroll = textEdit->verticalScrollBar();
    vscroll->setValue(vscroll->maximum());
}

void Log::append(const QString &message) {
    QString logText = QTime::currentTime().toString() + " " + message;
    textEdit->appendPlainText(logText);

    if(autoScroll) {
        scrollDown();
    }
}
