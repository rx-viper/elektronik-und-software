#ifndef ICEHPPMGRAPHIC_H
#define ICEHPPMGRAPHIC_H

#include <QWidget>

class IceHPPMGraphic : public QWidget {
    Q_OBJECT
public:
    explicit IceHPPMGraphic(QWidget *parent = 0);
    void setHeatProbePenDepth(float heatProbePenDepth);

signals:

public slots:

protected:
    void paintEvent(QPaintEvent *event) override;


public:
    float heatProbePenDepth = 0.5; // mm into the ice

};

#endif // ICEHPPMGRAPHIC_H
