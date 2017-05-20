#include "status.h"

Status::Status()
{

}

Status::~Status() {
    delete statusLabel;
}

void Status::setStatusBar(QStatusBar *statusBar) {
    statusLabel = new QLabel;
    statusBar->addWidget(statusLabel);
}

void Status::update(const QString &message) {
    statusLabel->setText(message);
}
