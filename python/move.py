import os
import shutil

source = 'C:/Users/Mars/Desktop/test/test1/'
destination = 'C:/Users/Mars/Desktop/test/test2/'

allfiles = os.listdir(source)

for f in allfiles:
	shutil.move(source + f, destination + f)
