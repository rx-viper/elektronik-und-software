#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include "icehppmgraphic.h"

#include <QMainWindow>
#include "qcustomplot.h"

#include "ExperimentStatus.hpp"

#include "communcation/BackendConfigWidget.hpp"

namespace Ui {
class MainWindow;
}

namespace viper
{

class MainWindow : public QMainWindow
{
    Q_OBJECT

public:
    explicit MainWindow(QWidget *parent = 0);
    ~MainWindow();
	void setBackendConfigWidget(BackendConfigWidget* widget);

public slots:
	void updateUI(const ExperimentStatus& status);
	void setConnected(bool connected);

signals:
	void connectClicked();

private:
	BackendConfigWidget* backendConfigWidget;
	Ui::MainWindow *ui;
};

}

#endif // MAINWINDOW_H
