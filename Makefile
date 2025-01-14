INCLUDES = -I/usr/include
LIBS = -lopencv_features2d -lopencv_highgui -lopencv_imgproc -lopencv_objdetect -lopencv_core \
        -lopencv_imgcodecs -lboost_system -lboost_thread -lboost_serialization -lboost_filesystem
LIBDIRS = -L/usr/local/lib
CC=g++
CFLAGS=-c -Wall -O3
SOURCES= image_sample.cpp head_pose_sample.cpp multi_part_sample.cpp face_forest.cpp face_utils.cpp demo.cpp 
OBJECTS=$(SOURCES:.cpp=.o)
EXECUTABLE=FaceForest

all: $(SOURCES) $(EXECUTABLE)
clean: 
	rm -f *.o
    
$(EXECUTABLE): $(OBJECTS) 
	$(CC) $(OBJECTS) $(LIBDIRS) $(LIBS) -o $@

.cpp.o:
	$(CC) $(CFLAGS) $(INCLUDES) $< -o $@
