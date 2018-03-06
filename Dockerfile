# Start from a Debian image with the latest version of Go installed
# and a workspace (GOPATH) configured at /go.
FROM golang

# Set the working directory in the container to /go/src/github.com/owenwaller/XP2018-WikiDemo
WORKDIR /go/src/github.com/owenwaller/XP2018-WikiDemo

# Copy the local package files to the container's workspace.
COPY . /go/src/github.com/owenwaller/XP2018-WikiDemo

# Build the outyet command inside the container.
# (You may fetch or manage dependencies here,
# either manually or with a tool like "godep".)
RUN go install github.com/owenwaller/XP2018-WikiDemo

# Run the outyet command by default when the container starts.
CMD ["XP2018-WikiDemo"]

# Document that the service listens on port 8080.
EXPOSE 8080
