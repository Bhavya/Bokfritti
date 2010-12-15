Bokfritti
=========

Bokfritti is a fun Bokeh graffiti canvas written in Processing, a graphics API for Java. Left-clicking and dragging creates extra luminescent spots, while right-clicking clears the canvas.

##Running
You can run Bokfritti as long as you have Java installed. Launch `/applet/Bokfritti.jar` to run.

##Modifying
You require Processing to modify the `.pde` files for this application.

Bugs
----
Right now it seems that the fade effect behaves differently in the `.jar` file than it does as an applet. While the light trail fades out completely in the regular application, it seems only to fade to a certain extent in the applet, causing the trail to stay visible even after an extended time. This might be a browser issue, or an issue with the `fill()` command. I am working to see if this can be fixed.
