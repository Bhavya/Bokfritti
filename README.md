Bokfritti
=========

Bokfritti is a fun Bokeh graffiti canvas written in Processing, a graphics API for Java. Left-clicking and dragging creates extra luminescent spots, while right-clicking allows the application to visualize audio input via a standard microphone.

Application
-----------
###Running
You can run Bokfritti by navigating to the relevant application directory and launching the standalone executable inside. Bokfritti has been compiled for MS Windows, Mac OSX, and Linux.

###Modifying
You require Processing to modify the `*.pde` files for this application. The Minim audio library is included.

Caveats
-------
Bokfritti audio input will not work with a USB microphone. This is attributed to the Minim audio library.

Known Issues
------------
* Right now it seems that the fade effect behaves differently in the executable than it does as an applet. While the light trail fades out completely in the regular application, it seems only to fade to a certain extent in the applet, causing the trail to stay visible even after an extended time. This might be a browser issue, or an issue with the `fill()` command. I am working to see if this can be fixed.
* A null pointer exception is thrown in Processing when the window is closed rather than stopped through the GUI. This is because the Minim input streams aren't closed successfully if `void stop()` is not called. 
* The applet does not function properly due to Processing compiling separate `*.jar` files and incorrect `jar` signing.