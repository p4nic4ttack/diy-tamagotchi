#!/bin/sh

sdcc -c --debug --model-large --use-stdout -V -Iinclude --xram-loc 0xF000 --xram-size 0x600 --code-size 0x7000 -I. main.c
sdcc -c --debug --model-large --use-stdout -V -Iinclude --xram-loc 0xF000 --xram-size 0x600 --code-size 0x7000 -I. lib/led.c
sdcc -c --debug --model-large --use-stdout -V -Iinclude --xram-loc 0xF000 --xram-size 0x600 --code-size 0x7000 -I. lib/buttons.c
sdcc -c --debug --model-large --use-stdout -V -Iinclude --xram-loc 0xF000 --xram-size 0x600 --code-size 0x7000 -I. lib/xc888_lib.c
sdcc -c --debug --model-large --use-stdout -V -Iinclude --xram-loc 0xF000 --xram-size 0x600 --code-size 0x7000 -I. lib/lcd.c
sdcc -c --debug --model-large --use-stdout -V -Iinclude --xram-loc 0xF000 --xram-size 0x600 --code-size 0x7000 -I. lib/position.c
sdcc -c --debug --model-large --use-stdout -V -Iinclude --xram-loc 0xF000 --xram-size 0x600 --code-size 0x7000 -I. lib/character.c
sdcc -c --debug --model-large --use-stdout -V -Iinclude --xram-loc 0xF000 --xram-size 0x600 --code-size 0x7000 -I. lib/menu.c
sdcc -c --debug --model-large --use-stdout -V -Iinclude --xram-loc 0xF000 --xram-size 0x600 --code-size 0x7000 -I. lib/rtc.c
sdcc -c --debug --model-large --use-stdout -V -Iinclude --xram-loc 0xF000 --xram-size 0x600 --code-size 0x7000 -I. lib/games.c

sdas8051 -plosgffwy main.rel main.asm
sdas8051 -plosgffwy xc888_lib.rel xc888_lib.asm
sdas8051 -plosgffwy buttons.rel buttons.asm
sdas8051 -plosgffwy led.rel led.asm
sdas8051 -plosgffwy lcd.rel lcd.asm
sdas8051 -plosgffwy position.rel position.asm
sdas8051 -plosgffwy character.rel character.asm
sdas8051 -plosgffwy menu.rel menu.asm
sdas8051 -plosgffwy rtc.rel rtc.asm
sdas8051 -plosgffwy games.rel games.asm

sdcc --debug --model-large --use-stdout -V --xram-loc 0xF000 --xram-size 0x600 --code-size 0x7000 -I. -o main.hex main.rel xc888_lib.rel led.rel lcd.rel buttons.rel position.rel character.rel menu.rel rtc.rel games.rel

rm *lst *adb *rst *sym *cdb *mem *omf *rel *lk *map
