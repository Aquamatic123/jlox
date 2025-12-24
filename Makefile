# Variables to make the script easy to update
BUILD_DIR := bin
SRC_DIR := src
PACKAGE_PATH := com/craftinginterpreters/lox
MAIN_CLASS := com.craftinginterpreters.lox.Lox

# The default target (what happens when you just type 'make')
all: compile

# 1. Create the build directory and compile all Java files
compile:
	@mkdir -p $(BUILD_DIR)
	javac -d $(BUILD_DIR) $(SRC_DIR)/$(PACKAGE_PATH)/*.java

# 2. Run. use args="filename" to read a file
run: compile
	java -cp $(BUILD_DIR) $(MAIN_CLASS) $(args)

# 4. Remove all compiled files
clean:
	rm -rf $(BUILD_DIR)
