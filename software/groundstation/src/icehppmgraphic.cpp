#include "icehppmgraphic.h"
#include <iostream>
#include <QPainter>
#include <QPen>

using namespace std;

IceHPPMGraphic::IceHPPMGraphic(QWidget *parent) : QWidget(parent) {}

void IceHPPMGraphic::setHeatProbePenDepth(float heatProbePenDepth) {
    this->heatProbePenDepth = heatProbePenDepth;
    update();
}

void IceHPPMGraphic::paintEvent(QPaintEvent *event) {
    QPainter painter(this);
    painter.setRenderHint(QPainter::Antialiasing);

    const float textSize = 7;
    QFont font("Courier New");
    font.setPixelSize(textSize);
    painter.setFont(font);

    float iceCylinderDiameter = 52; // mm
    float iceCylinderRadius = iceCylinderDiameter/2; // mm
    float iceCylinderHeight = 65; // mm
    QColor iceColor(43, 212, 255);

    //float heatProbeHeight = iceCylinderHeight;
    float heatProbeDiameter = 4.5; // mm
    float heatProbeRadius = heatProbeDiameter/2;
    QColor heatProbeColor(212, 175, 55);

    QColor scaleColor(0, 0, 0);


    float heightOverIce = 20; // mm

    float neededWidth = iceCylinderDiameter;
    float neededHeight = iceCylinderHeight + heightOverIce;

    float scale1 = height()/neededHeight;
    float scale2 = width()/neededWidth;
    float scale = qMin(scale1, scale2);

    painter.scale(scale, scale);
    painter.translate(iceCylinderRadius, heightOverIce);

    //--------------------------------------------------------------

    // ice cylinder
    QRectF iceCylinder(QPointF(-iceCylinderRadius, 0.0),
                       QPointF(iceCylinderRadius, iceCylinderHeight));

    painter.setPen(Qt::NoPen);
    painter.setBrush(iceColor);
    painter.drawRect(iceCylinder);

    // heat probe
    QRectF heatProbeRect(QPointF(-heatProbeRadius, -heightOverIce),
                         QPointF(heatProbeRadius, heatProbePenDepth));

    painter.setPen(Qt::NoPen);
    painter.setBrush(heatProbeColor);
    painter.drawRect(heatProbeRect);

    // Heat Probe depth reading

    QPen pen;
    pen.setColor(heatProbeColor);
    pen.setWidthF(0.5);
    painter.setPen(pen);

    painter.scale(1, 1);

    float rightOfDepth = iceCylinderRadius-0.25*textSize;

    painter.drawLine(QPointF(-heatProbeRadius, heatProbePenDepth),
                     QPointF(rightOfDepth, heatProbePenDepth));

    QRectF strRect(rightOfDepth, heatProbePenDepth, 0, 0);
    QString strNumber = QString::number(heatProbePenDepth, 'f', 1);
    painter.drawText(strRect,
                     Qt::AlignRight | Qt::AlignBottom | Qt::TextDontClip,
                     strNumber);


    // scale

    pen.setColor(scaleColor);
    pen.setWidthF(0.7);
    painter.setPen(pen);

    for(int i=-(heightOverIce-textSize/2)/5; i<(iceCylinderHeight-textSize/2)/5; ++i) {
        float y = i*5;
        bool major = i%2 == 0;
        float lineLen = heatProbeRadius * (major ? 2.4 : 1.6);
        painter.drawLine(QPointF(-lineLen, y), QPointF(lineLen, y));
        if(major) {
            QRectF strRect(-lineLen-0.25*textSize, y, 0, 0);
            QString strNumber = QString::number(i*5);
            painter.drawText(strRect,
                             Qt::AlignRight | Qt::AlignVCenter | Qt::TextDontClip,
                             strNumber);
        }
    }
}
