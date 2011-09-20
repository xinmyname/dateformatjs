$buildDir = ".\build"
$outputDir = "$buildDir\Content\Scripts"
if (test-path $buildDir) { ri -r -fo $buildDir }
mkdir $outputDir | out-null
copy .\dateformat.js $outputDir
.\tools\AjaxMin\AjaxMin.exe .\dateformat.js -o .\build\Content\Scripts\dateformat.min.js
.\tools\nuget\NuGet.exe pack .\dateformatjs.nuspec -BasePath $buildDir -OutputDirectory $buildDir
