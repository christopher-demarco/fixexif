#!/usr/bin/env python

import sys
import pexif

if __name__ == '__main__':

    fn = sys.argv[1]

    jpeg = pexif.JpegFile.fromFile(fn)
    exif = jpeg.get_exif()
    print dir(exif)
    print exif.dump()
