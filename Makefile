# Compiler
CC = g++

## Language Standard
LANG_STD = -std=c++17

# Compiler flags
COMPILER_FLAGS = -Wall -Wfatal-errors 

# Inlcude Paths
INCLUDE_PATH = -I"./libs/"

# Homebrew include and lib paths
BREW_INCLUDE_PATH = -I"/opt/homebrew/include/"
BREW_LIB_PATH = -L"/opt/homebrew/lib/"

# Source folders
SRC_FOLDERS = 	./src/*.cpp 

# Linker Flags
LINKER_FLAGS = -lSDL2 

# Output Object name
PROJECT_NAME = main 

UNAME := $(shell uname)

# TODO fix this for windows
build:
ifeq ($(UNAME), Darwin)
	$(CC) $(COMPILER_FLAGS) $(LANG_STD) $(INCLUDE_PATH) $(BREW_INCLUDE_PATH) $(SRC_FOLDERS) $(BREW_LIB_PATH) $(LINKER_FLAGS) -o $(PROJECT_NAME)
else
	$(CC) $(COMPILER_FLAGS) $(LANG_STD) $(INCLUDE_PATH) $(SRC_FOLDERS) $(LINKER_FLAGS) -o $(PROJECT_NAME)
endif

run:
	./$(PROJECT_NAME)

clean:
	rm $(PROJECT_NAME)