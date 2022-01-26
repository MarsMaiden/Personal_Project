import os
import shutil
import sys

path = 'C:/Users/Mars/Pictures/'
source = 'C:/Users/Mars/Desktop/test/test1/'
destination = 'C:/Users/Mars/Desktop/test/test2/'

allfiles = os.listdir(source)
dirs = os.listdir(path)

for f in allfiles:
    shutil.move(source + f, destination + f)

for file in dirs:
    print(file)
