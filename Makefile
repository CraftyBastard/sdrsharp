build:
	xbuild SDRSharp.sln /p:Configuration=$(configuration)

debug: configuration=Debug
debug: build

release: configuration=Release
release: build

clean:
	xbuild /target:clean

run:
	cd $(configuration) && mono --optimize=all SDRSharp.exe

run-debug: configuration=Debug
run-debug: build run

run-release: configuration=Release
run-release: build run
