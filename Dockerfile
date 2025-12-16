FROM alpine

WORKDIR /app

COPY dockerpro.cpp .
RUN apk add --no-cache g++
RUN g++ dockerpro.cpp -o dockerpro

 
CMD ["./dockerpro"]
