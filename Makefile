
CXX      = g++
CXXFLAGS = -g -O2
LDFLAGS  = 
DEFS     = -DHAVE_CONFIG_H
LIBS     =  -L/usr/local/lib -pthread   -lwx_gtk2_richtext-2.8 -lwx_gtk2_aui-2.8 -lwx_gtk2_xrc-2.8 -lwx_gtk2_qa-2.8 -lwx_gtk2_html-2.8 -lwx_gtk2_adv-2.8 -lwx_gtk2_core-2.8 -lwx_base_xml-2.8 -lwx_base_net-2.8 -lwx_base-2.8 
CPPFLAGS =  -I/usr/local/lib/wx/include/gtk2-ansi-release-2.8 -I/usr/local/include/wx-2.8 -D_FILE_OFFSET_BITS=64 -D_LARGE_FILES -D__WXGTK__ -pthread


#CC          = c++
#CXXFLAGS    = -O2  -Wall
#CXXFLAGS_WX = $(shell wx-config --cflags)
#LIBS_WX     = $(shell wx-config --libs)
#CXXFLAGS_PYTHON =-I/usr/include/python2.2 -DALH_PYTHON_EXTEND
#LIBS_PYTHON =-lpython2.2


OBJECTS     = collection.o cfgfile.o cstr.o files.o hash.o objs.o\
              data.o errs.o atlaparser.o \
              ahapp.o ahframe.o consts_ah.o editpane.o \
              editsframe.o extend.o extend_no.o \
			  flagsdlg.o hexfilterdlg.o listcoledit.o \
              listpane.o mapframe.o \
              mappane.o msgframe.o optionsdlg.o \
              unitfilterdlg.o unitframe.o unitframefltr.o unitpane.o \
              unitpanefltr.o unitsplitdlg.o utildlgs.o

TARGET      = ah


all: $(patsubst %.o,obj/%.o,$(OBJECTS))
	$(CXX) -s $(LDFLAGS) -o $(TARGET) $(patsubst %.o,obj/%.o,$(OBJECTS)) $(LIBS)

clean:
	rm -f $(patsubst %.o,obj/%.o,$(OBJECTS)) $(TARGET)

$(patsubst %.o,obj/%.o,$(OBJECTS)): obj/%.o: %.cpp
	$(CXX) -c $(CXXFLAGS) $(CPPFLAGS) $(DEFS) -o $@ $<
