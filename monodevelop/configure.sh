#! /bin/bash -e
echo "Configuring..."
fsharpi configure.fsx
echo "Getting nuget packages..."
mozroots --import --sync
(cd MonoDevelop.FSharpBinding && mono ../../lib/nuget/nuget.exe install)
