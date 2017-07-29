#ifndef ICEHPPMGRAPHIC_H
#define ICEHPPMGRAPHIC_H

#include <QWidget>

class IceHPPMGraphic : public QWidget
{
    Q_OBJECT

private:
    float heatProbePenDepth = 0.0; // mm into the ice

public:
    explicit IceHPPMGraphic(QWidget *parent = 0);
    void setHeatProbePenDepth(float heatProbePenDepth);

protected:
    void paintEvent(QPaintEvent *event) override;
};

#endif // ICEHPPMGRAPHIC_H
