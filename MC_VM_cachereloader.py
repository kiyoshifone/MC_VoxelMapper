#!/usr/bin/env python
import os
import zipfile
uname = os.environ.get("USERNAME")
sname = "SERVERNAME"
saddr = "SERVERADDRESS"
path = "/home/%s/.minecraft/%s" % (uname, sname)
path = path + "/mods/VoxelMods/voxelMap/cache/%s/" % (saddr)
for dirpath, dirs, files in os.walk(path):
  for f in files:
    infile = os.path.join(dirpath, f)
    f_zip = zipfile.ZipFile(infile, 'r')
    #for k in f_zip.infolist():
      #print k.filename
    f_zip.close()
    
