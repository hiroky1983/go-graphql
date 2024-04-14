FROM --platform=linux/amd64 golang:1.22.1-alpine

ENV CGO_ENABLED=0 \
    GOOS=linux \
    GOARCH=amd64  \
    ROOTPATH=/go

WORKDIR /go/backend

COPY go.mod go.sum .air.toml ./
RUN go mod download
RUN go install github.com/cosmtrek/air@v1.40.4
RUN go install honnef.co/go/tools/cmd/staticcheck@latest
RUN go mod tidy
COPY . .

EXPOSE 8000

CMD ["air", "-c", ".air.toml"]