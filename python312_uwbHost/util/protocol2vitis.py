import os
import shutil

MinGWPath = "./../../cpp_MinGW_protocol/"
VitisPath = "./../../xxxxxxxxxxxxxxxxxxxxxxxxxxxxx"

files = os.listdir(MinGWPath + "protocol/")
for f in files:
    shutil.copy(MinGWPath + "protocol/" + f, VitisPath + "protocol/")

files = os.listdir(MinGWPath + "cp/")
for f in files:
    shutil.copy(MinGWPath + "cp/" + f, VitisPath + "cp/")
