import os
import shutil

directory = "C:/Users/Mars/Videos/"
destination = "C:/Users/Mars/Desktop/Fotos/"

dirs = os.listdir(directory)

for root, subdirectories, files in os.walk(directory):
    for subdirectory in subdirectories:
        print(os.path.join(root, subdirectory))
    for file in files:
        if file.endswith('.db' or '.ini'):
            pass
        else:
            print(os.path.join(root, file))
            shutil.move(root + "/" + file, destination + file)

            if len(os.listdir(root)) == 0:
                os.rmdir(root)
            else:
                print("No vacio")
