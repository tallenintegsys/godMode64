all: iambecomegod_intel.o iambecomegod_att.o

iambecomegod_intel.o: iambecomegod.asm
	nasm -f elf -o $@ $<

iambecomegod_att.o: iambecomegod.s
	as --32 -o $@ $<

.PHONY: clean dump
clean:
	rm -f *.o

dump:
	objdump -d *.o
