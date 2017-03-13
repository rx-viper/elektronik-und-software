# Battery Power and Energy Calculation

Heatprobes: 	P = 3 * 60W = 180W
				V = 24V
Experiment:		t = 3min = 180s = 0,05h
Efficienty:		Step Up = 0,93
BK250 SCH		Q = 2800mAh
				m = 57g

## Calculation:
			Waste:	180W * 0,07 = 12,6W
					E_Heatprobe = 180W * 0,05h = 9Wh
					E_Cell = 1,2V * 2800mAh = 3,36Wh per Cell
					E_Waste = 12,6W * 0,05h = 0,63Wh
					E_total = 9Wh + 0,63Wh = 9,63Wh
	Amount Cells:	E_total/E_Cell = 9,63Wh/3,36Wh = 2,866 Cells
					=> 3 Cells

	1,1V at 20A		P_Cell = 1,1V * 20A = 22W
	(Batterychart)	P_Heatprobe = 180W
					P_Waste = 12,6W
					P_Total = P_Heatprobe + P_Waste = 180W + 12,6W = 192,6W
	Amount Cells:	P_Total/P_Cells = 192,6W/22W = 8,75 Cells
					=> 9 Cells

	1,0V at 30A		P_Cell = 1,0V * 30A = 30W
	(Batterychart)	P_Heatprobe = 180W
					P_Waste = 12,6W
					P_Total = 192,6W
	Amount Cells:	P_Total/P_Cells = 192,6W/30W = 6,41 Cells
					=> 7 Cells

	=> Amount Cells chosen: 8 Cells
