@echo off
cd ..
set /p "id=New Version Tag: "
python DatapackBuildManager/build-datapack.py BlockUtils -u %id%
