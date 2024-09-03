# Makefile

# 컴파일러와 컴파일 옵션 정의
CC = gcc
CFLAGS = -Wall -Wextra -O2
LDFLAGS = 

# 소스 디렉토리와 실행 파일 이름 정의
SRC_DIR = src
BIN_DIR = bin
TARGET = $(BIN_DIR)/program

# 소스 파일 목록 생성
SRCS = $(wildcard $(SRC_DIR)/*.c)

# 기본 타겟 정의
all: $(TARGET)

# 실행 파일 생성 규칙
$(TARGET): $(SRCS)
	@mkdir -p $(BIN_DIR)
	$(CC) $(CFLAGS) $(LDFLAGS) -o $@ $(SRCS)

# 청소 규칙
clean:
	rm -rf $(BIN_DIR)

# 디펜던시 생성 규칙
.PHONY: all clean
