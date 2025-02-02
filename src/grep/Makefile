SHELL := /bin/bash
FILE=test_6_grep.txt
ARG=he
PATTERN=pattern.txt

all: ci main



build: ci main



s21_grep:
	gcc -Wall -Werror -Wextra -o s21_grep s21_grep.c
	


cf:
	cp ../../materials/linters/.clang-format .



cn:
	cp ../../materials/linters/.clang-format .
	clang-format -n *.c *.h




ci:
	cp ../../materials/linters/.clang-format .
	clang-format -i *.c *.h



maln:
	gcc -std=c11 -Wall -Werror -Wextra -o s21_grep s21_grep.c




v: 
	gcc -g -std=c11 -Wall -Werror -Wextra -o s21_grep s21_grep.c
	valgrind ./s21_grep $(ARG) $(FILE)





tests:
	-diff <(./s21_grep $(ARG) $(FILE)) <(grep $(ARG) $(FILE))
	-diff <(./s21_grep -e $(ARG) $(FILE)) <(grep -e $(ARG) $(FILE))
	-diff <(./s21_grep -i $(ARG) $(FILE)) <(grep -i $(ARG) $(FILE))
	-diff <(./s21_grep -v $(ARG) $(FILE)) <(grep -v $(ARG) $(FILE))
	-diff <(./s21_grep -c $(ARG) $(FILE)) <(grep -c $(ARG) $(FILE))
	-diff <(./s21_grep -l $(ARG) $(FILE)) <(grep -l $(ARG) $(FILE))
	-diff <(./s21_grep -n $(ARG) $(FILE)) <(grep -n $(ARG) $(FILE))
	-diff <(./s21_grep -h $(ARG) $(FILE)) <(grep -h $(ARG) $(FILE))
	-diff <(./s21_grep -s $(ARG) $(FILE)) <(grep -s $(ARG) $(FILE))
	-diff <(./s21_grep -f $(PATTERN) $(FILE)) <(grep -f $(PATTERN) $(FILE))
	-diff <(./s21_grep -o $(ARG) $(FILE)) <(grep -o $(ARG) $(FILE))
	-diff <(./s21_grep -ivclnhsof pattern.txt $(FILE)) <(grep -ivclnhsof pattern.txt $(FILE))
	-diff <(./s21_grep for s21_grep.c -hcl) <(grep for s21_grep.c -hcl)
	-diff <(./s21_grep for s21_grep.c -cl) <(grep for s21_grep.c -cl)
	-diff <(./s21_grep for s21_grep.c -hl) <(grep for s21_grep.c -hl)
	-diff <(./s21_grep for s21_grep.c -hc) <(grep for s21_grep.c -hc)
	-diff <(./s21_grep for s21_grep.c -h) <(grep for s21_grep.c -h)
	-diff <(./s21_grep for s21_grep.c -c) <(grep for s21_grep.c -c)
	-diff <(./s21_grep for s21_grep.c -l) <(grep for s21_grep.c -l)
	-diff <(./s21_grep -f $(PATTERN) s21_grep.c) <(grep -f $(PATTERN) s21_grep.c)





test:
	sh test_func_grep.sh





clean:
	rm -rf ./s21_grep ./.clang-format

	

main:
	gcc -Wall -Werror -Wextra -o s21_grep s21_grep.c

rebuild: clean ci all
