#ifndef LOG_H
#define LOG_H

#include <QPlainTextEdit>
#include <QString>

class Log {
    QPlainTextEdit *textEdit;
    bool autoScroll = false;

    void scrollDown();

public:
    Log();

    void setTextEdit(QPlainTextEdit *plainTextEdit);
    void setAutoScroll(bool newAutoScrollState);
    void append(const QString& message);
};

#endif // LOG_H
