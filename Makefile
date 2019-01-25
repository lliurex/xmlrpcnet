SOURCES=src/*.cs
	
CSC = dmcs
CSC_FLAGS = -r:System -r:System.Data -r:System.Drawing -r:System.Web -r:System.Windows.Forms -r:System.Xml -target:library -optimize+
OUT = xmlrpcnet.dll
PKG_CONFIG_PATH = "/usr/lib/pkgconfig"

clean: 
	rm -rf bin/
	rm -f src/xmlrpc.pidb
	

release: $(SOURCES)
	mkdir -p bin/Release/
	$(CSC) $(CSC_FLAGS) $(SOURCES) -out:bin/Release/$(OUT)
	
debug: $(SOURCES)
	mkdir -p bin/Debug/
	$(CSC) $(CSC_FLAGS) $(SOURCES) -out:bin/Debug/$(OUT)	 -debug
