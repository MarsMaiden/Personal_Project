import os

directory = "C:/Users/Mars/Pictures/"

for root, subdirectories, files in os.walk(directory):
    for subdirectory in subdirectories:
        print(os.path.join(root, subdirectory))
    for file in files:
        print(os.path.join(root, file))