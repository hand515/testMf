main_src := src/main.cpp
src := src/test.cpp

INCLUDE := -I./

main_obj = $(main_src:.cpp=.o)
src_obj = $(src:.cpp=.o)

.SUFFIXES: .o .cpp .c

.cpp.o:
	g++ $(INCLUDE) -Wno-deprecated -c -o $@ $<
	
all: testMf

PROGRAM = testMf

$(PROGRAM): $(src_obj) $(main_obj)
	g++ -o $@ $(src_obj) $(main_obj)
	
install:
	install $(PROGRAM) ./bin
	
clean:
	rm -f *.o
	rm -f *_m
	rm -f $(src_obj) $(PROGRAM) $(main_obj)



