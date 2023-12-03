# Define variables
V_FILES := $(wildcard *.v)  # Matches all .v files in the directory

# Default rule
all: build

run: build
	./simv -gui &

# Rule to run the command
build: $(V_FILES)
	vcs -full64 -f cmd_fl -debug -v2005

# Clean rule to remove generated files
clean:
	rm -rf simv* csrc* ucli.key

.PHONY: all clean
