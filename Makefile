SETUP_SCRIPT := ./scripts/setup.sh

# Build the project
build:
	go build -o bin/yourproject cmd/main.go

# Run the project
run:
	go run cmd/server/main.go

# Setup the project
setup:
	$(SETUP_SCRIPT)

# Clean build artifacts
clean:
	rm -rf bin

.PHONY: build run setup clean
