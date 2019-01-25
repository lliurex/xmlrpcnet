SOURCES=*.cs
	
CSC = gmcs
CSC_FLAGS = -r:System -r:System.Data -r:System.Drawing -r:System.Web -r:System.Windows.Forms -r:System.Xml -target:library -optimize+
OUT = test.dll
PKG_CONFIG_PATH = "/usr/lib/pkgconfig"

clean: 
	rm -rf bin/
	rm -f lliurex-control-center.pidb
	

release: $(SOURCES)
	mkdir -p bin/Release/
	$(CSC) $(CSC_FLAGS) $(SOURCES) -out:bin/Release/$(OUT)
	
debug: $(SOURCES)
	mkdir -p bin/Debug/
	$(CSC) $(CSC_FLAGS) $(SOURCES) -out:bin/Debug/$(OUT)	 -debug
