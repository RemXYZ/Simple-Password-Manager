all: compile link

compile:
	g++ -I"src\include" -c main.cpp -DSFML_STATIC

link:
	g++ main.o -o main -L"src\lib" -lsfml-graphics-s -lsfml-window-s -lsfml-system-s -lopengl32 -lfreetype -lgdi32 -lwinmm -mwindows -lsfml-main
