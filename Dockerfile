
# Use the official Go image as the base image
FROM golang:latest AS build

# Set the working directory within the container
WORKDIR /app

# Copy the Go module files and download dependencies
COPY go.mod go.sum ./
RUN go mod download

# Copy the entire project directory into the container
COPY . .

