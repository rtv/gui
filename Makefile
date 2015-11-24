# Makefile for RASTER lab by RTV. 

# Makefiles help manage the compilation process.  To use this
# Makefile, run 'make' in the directory containing this file.

# compiler options
CFLAGS = -std=c99 -g 
LDFLAGS = -lm 

CFLAGS += -I/usr/local/include
LDFLAGS += -L/usr/local/lib -lglut -framework OpenGL

SRC = roids.c brightcolor.c gui.c

roids:  $(SRC)
	gcc  $(CFLAGS) $(SRC) -o roids $(LDFLAGS)

clean:
	rm -f  roids *.o
