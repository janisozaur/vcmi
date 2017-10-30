cd %APPVEYOR_BUILD_FOLDER%
cd build_%VCMI_BUILD_PLATFORM%

cmake -DCMAKE_CXX_FLAGS="/d2cgsummary" --build . --config %VCMI_BUILD_CONFIGURATION% -- /maxcpucount:2

cpack
