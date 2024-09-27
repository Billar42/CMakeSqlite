FROM alpine:latest
WORKDIR /app
RUN apk --no-cache add cmake clang clang-dev make gcc g++ libc-dev linux-headers
COPY . /app
RUN cmake .
RUN cmake --build . -v > log.txt
RUN make
CMD ["./myproject"]
