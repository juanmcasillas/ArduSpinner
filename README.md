# ArduSpinner
A simple implementation using Arduino and some rotary encoders to create a spinner for arkanoid

* test1 interrupt handled. works fine.
* test2 poll with class and switch. works fine
* test3 poll. only increases the value. bad.
* test4 MD_REncoder library test https://github.com/MajicDesigns/MD_REncoder/
* test5 on https://github.com/0xPIT/encoder. Requires also TimerOne library
# driver

https://github.com/adrianmihalko/ch340g-ch34g-ch34x-mac-os-x-driver DONT WORK
https://github.com/MPParsley/ch340g-ch34g-ch34x-mac-os-x-driver trying this, doesn't work

On windows OK, on mac, doesn't shown the serial ports for these device.

Only works with my rewritten version of ClickEncoder.
MAME Options (Defaults) (Arkanoid II)
DIAL Digital Speed = 15
DIAL Sensivity = 70
