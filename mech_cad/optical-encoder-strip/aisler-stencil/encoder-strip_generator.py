#!/bin/python3

from collections import namedtuple

Point = namedtuple('Point', ['x', 'y'])

def gen_paste_rect(top, bottom, right, left):
    print("  (zone (net 0) (net_name \"\") (layer F.Paste) (tstamp 0) (hatch edge 0.508)")
    print("    (connect_pads (clearance 0.508))")
    print("    (min_thickness 0)")
    print("    (fill yes (arc_segments 16) (thermal_gap 0.508) (thermal_bridge_width 0.508))")
    print("    (polygon")
    print("      (pts")
    print("        (xy {:.3f} {:.3f}) (xy {:.3f} {:.3f}) (xy {:.3f} {:.3f}) (xy {:.3f} {:.3f})".format(left, top, right, top, right, bottom, left, bottom))
    print("      )")
    print("    )")
    print("    (filled_polygon")
    print("      (pts")
    print("        (xy {:.3f} {:.3f}) (xy {:.3f} {:.3f}) (xy {:.3f} {:.3f}) (xy {:.3f} {:.3f})".format(left, top, right, top, right, bottom, left, bottom))
    print("      )")
    print("    )")
    print("  )")


if __name__ == '__main__':
	right = 18.5
	left = 12.0
	line_height = 25.4 / (360*2)
	line_y = 1.0
	while line_y <= 69.0:
		#print("{:.4f}".format(line_y))
		gen_paste_rect(line_y, line_y+line_height, right, left)
		line_y += 25.4 / 360
