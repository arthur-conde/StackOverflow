msbuild StackOverflow.sln /t:Clean /p:Platform="Any CPU" /p:Configuration="Debug"
msbuild StackOverflow.AddOns.sln /t:Clean /p:Platform="Any CPU" /p:Configuration="Debug"
msbuild StackOverflow.sln /p:Platform="Any CPU" /p:Configuration="Debug"
msbuild StackOverflow.AddOns.sln /p:Platform="Any CPU" /p:Configuration="Debug"