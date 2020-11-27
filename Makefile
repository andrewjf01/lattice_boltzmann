GDB=-ggdb
GPROF=
OPTIMIZE=
CFLAGS=-std=c++11 $(GDB) $(GPROF) $(OPTIMIZE)
CPP=g++
OPENGL=-L/usr/local/lib -lGLEW -lGLU -lm -lglfw3 -lrt -lm -ldl -lXrandr -lXinerama -lXi -lXcursor -lXrender -lGL -lm -lpthread -ldl -ldrm -lXdamage -lXfixes -lXxf86vm -lXext -lX11 -lpthread -lxcb -lXau -lXdmcp

fluid : main.o graphics.o
	$(CPP) main.o graphics.o -o fluid $(CFLAGS) $(OPENGL)

main.o : main.cpp graphics.cpp
	g++ -c main.cpp $(CFLAGS)

graphics.o : graphics.cpp
	g++ -c graphics.cpp $(CFLAGS) $(OPENGL)

clean : 
	rm *.o dust 
