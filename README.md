#Motion Sensor Application

This application registers Flow, Flow Access and Digital Input object to Flow server and sends Motion sense events.

How To Compile

Assuming you have creator-contiki source code with directories constrained-os, packages/motion-sensor, packages/libobjects and packages/AwaLWM2M

To build with TI CC2520 6lowpan driver
```
$ cd motion-sensor
$ make TARGET=mikro-e USE_CC2520=1
```

To build with Cascoda CA8210 6lowpan driver
```
$ cd motion-sensor
$ make TARGET=mikro-e USE_CA8210=1
```

This will generate hex file which can be flashed onto the MikroE clicker.

----

## Contributing

We welcome all contributions to this project and we give credit where it's due. Anything from enhancing functionality to improving documentation and bug reporting - it's all good.

For more details about the Contributor's guidelines, refer to the [contributor guide](https://github.com/CreatorKit/creator-docs/blob/master/ContributorGuide.md).
