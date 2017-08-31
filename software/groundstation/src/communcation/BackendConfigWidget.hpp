#ifndef BACKENDCONFIGWIDGET_H
#define BACKENDCONFIGWIDGET_H

#include <QWidget>

class BackendConfigWidget : public QWidget
{
	Q_OBJECT
public:
	virtual void applyConfig() = 0;
	virtual void reloadSavedSettings() = 0;

protected:
	BackendConfigWidget(QWidget* parent = nullptr) : QWidget{parent}
	{}
};

#endif // BACKENDCONFIGWIDGET_H
