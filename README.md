# motion-sensor

MikroElektronika 6LoWPAN Clicker based motion sensor application

This application uses [AWA LWM2M](https://github.com/FlowM2M/AwaLWM2M) to send events to a Ci40 that is running the [motion-led-controller application](https://github.com/CreatorKit/motion-led-controller).

How To Compile

Assuming you have creator-contiki source code with directories constrained-os, packages/button-sensor, packages/libobjects and packages/AwaLWM2M

```
$ cd motion-sensor
$ make TARGET=mikro-e USE_CA8210=1
```

This will generate hex file which can be flashed onto the MikroE clicker.
