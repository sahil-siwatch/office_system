*Getting* started with KiCad.

reference tutorial : https://www.youtube.com/watch?v=-tN14xlWWmA

Creating a new project:

![image-20200212130426363](C:\Users\Sahil Siwatch\AppData\Roaming\Typora\typora-user-images\image-20200212130426363.png)

![image-20200212130508029](C:\Users\Sahil Siwatch\AppData\Roaming\Typora\typora-user-images\image-20200212130508029.png)

![image-20200212130539395](C:\Users\Sahil Siwatch\AppData\Roaming\Typora\typora-user-images\image-20200212130539395.png)

Click on .sch file and a new window will open.

![image-20200212130638626](C:\Users\Sahil Siwatch\AppData\Roaming\Typora\typora-user-images\image-20200212130638626.png)

Click on place symbol icon and drag the cursor to the Circuit Editor Panel(The box at the centre) and click  there.

![image-20200212130912722](C:\Users\Sahil Siwatch\AppData\Roaming\Typora\typora-user-images\image-20200212130912722.png)

On clicking, it will open the list of components. 

![image-20200212131025312](C:\Users\Sahil Siwatch\AppData\Roaming\Typora\typora-user-images\image-20200212131025312.png)

Search and place the components on the circuit editor box.

Shortcuts:

Dragging the components -- take the cursor on the component and press M and move the cursor. The component will move. 

Rotating the component: Hover the cursor on the component and press R.

Copying the component: Hover the cursor on the component and press C.

Now after placing all the components,  we can connect them by selecting the place wire icon. 

![image-20200212135038017](C:\Users\Sahil Siwatch\AppData\Roaming\Typora\typora-user-images\image-20200212135038017.png)

# Creating Custom libraries

Before creating a component, we should create our own library so that we can store our self made components in the library to avoid confusion.



![image-20200212143940150](C:\Users\Sahil Siwatch\AppData\Roaming\Typora\typora-user-images\image-20200212143940150.png)

# Creating components</u>

Reference tutorial: https://kicad.txplore.com/index-p=96.html

https://michd.me/blog/kicad-working-with-schematic-components-and-libraries/

We need to use symbol library editor.

![image-20200212141220916](C:\Users\Sahil Siwatch\AppData\Roaming\Typora\typora-user-images\image-20200212141220916.png)

![image-20200212141242911](C:\Users\Sahil Siwatch\AppData\Roaming\Typora\typora-user-images\image-20200212141242911.png)

![image-20200212141315235](C:\Users\Sahil Siwatch\AppData\Roaming\Typora\typora-user-images\image-20200212141315235.png)

![image-20200212144318379](C:\Users\Sahil Siwatch\AppData\Roaming\Typora\typora-user-images\image-20200212144318379.png)

![image-20200212144746479](C:\Users\Sahil Siwatch\AppData\Roaming\Typora\typora-user-images\image-20200212144746479.png)

Now we can create a frame for the component bme280. 

![image-20200212144945974](C:\Users\Sahil Siwatch\AppData\Roaming\Typora\typora-user-images\image-20200212144945974.png)

![image-20200212145154457](C:\Users\Sahil Siwatch\AppData\Roaming\Typora\typora-user-images\image-20200212145154457.png)

![image-20200212145220475](C:\Users\Sahil Siwatch\AppData\Roaming\Typora\typora-user-images\image-20200212145220475.png)

Now we need to add pins to the frame. 

![image-20200212145410747](C:\Users\Sahil Siwatch\AppData\Roaming\Typora\typora-user-images\image-20200212145410747.png)

![image-20200212145822611](C:\Users\Sahil Siwatch\AppData\Roaming\Typora\typora-user-images\image-20200212145822611.png)

Fill colour to the frame:

Go to the outline of rectangle and press E. 

![image-20200212150822703](C:\Users\Sahil Siwatch\AppData\Roaming\Typora\typora-user-images\image-20200212150822703.png)

Here we have generated a schematic. 

![image-20200212153930536](C:\Users\Sahil Siwatch\AppData\Roaming\Typora\typora-user-images\image-20200212153930536.png)

we connected the components and assigned them values after annotating them.

Next step is to generate a netlist. 

![image-20200212154108595](C:\Users\Sahil Siwatch\AppData\Roaming\Typora\typora-user-images\image-20200212154108595.png)

Click on generating netlist and save the file.

Next step is: 

![image-20200212154228534](C:\Users\Sahil Siwatch\AppData\Roaming\Typora\typora-user-images\image-20200212154228534.png)

A new window opens: 

![image-20200212154500817](C:\Users\Sahil Siwatch\AppData\Roaming\Typora\typora-user-images\image-20200212154500817.png)

Here we have three sections. On the left side, we have footprints libraries from which we will select the library in which our filtered footprint is present of the component.

We have selected the library of smd led on the left and a normal led from that library in the left. We can view the selected footprint.  

![image-20200212154716512](C:\Users\Sahil Siwatch\AppData\Roaming\Typora\typora-user-images\image-20200212154716512.png)

After assignment, the middle window looks like that:;

![image-20200212155723169](C:\Users\Sahil Siwatch\AppData\Roaming\Typora\typora-user-images\image-20200212155723169.png)

Generate netlist again after this step.

Now 

<img src="C:\Users\Sahil Siwatch\AppData\Roaming\Typora\typora-user-images\image-20200212164300932.png" alt="image-20200212164300932" style="zoom:80%;" />

Click on load netlist and select the .net file saved earlier.

![image-20200212164354478](C:\Users\Sahil Siwatch\AppData\Roaming\Typora\typora-user-images\image-20200212164354478.png)

Now we need to re-arrange the components so that maximum wires are overlapping. Here is the arranged diagram.

![image-20200212165100475](C:\Users\Sahil Siwatch\AppData\Roaming\Typora\typora-user-images\image-20200212165100475.png)

Now select the routing icon and do routing. 

![image-20200212170949446](C:\Users\Sahil Siwatch\AppData\Roaming\Typora\typora-user-images\image-20200212170949446.png)

When the routing is overlapping, we can select the below/up copper from the options and then continue to the routing.

Next step is edge-cutting, 

Select the edge cut from the above options and also graphic lines mode. 

![image-20200212171230302](C:\Users\Sahil Siwatch\AppData\Roaming\Typora\typora-user-images\image-20200212171230302.png)

![image-20200212171256774](C:\Users\Sahil Siwatch\AppData\Roaming\Typora\typora-user-images\image-20200212171256774.png)

![image-20200212171527397](C:\Users\Sahil Siwatch\AppData\Roaming\Typora\typora-user-images\image-20200212171527397.png)

Now we can view our circuit in 3d view

![image-20200212171704147](C:\Users\Sahil Siwatch\AppData\Roaming\Typora\typora-user-images\image-20200212171704147.png)

![image-20200212171732821](C:\Users\Sahil Siwatch\AppData\Roaming\Typora\typora-user-images\image-20200212171732821.png)

![image-20200212171751285](C:\Users\Sahil Siwatch\AppData\Roaming\Typora\typora-user-images\image-20200212171751285.png)

ADDING MOUNT HOLES:

![image-20200212172431438](C:\Users\Sahil Siwatch\AppData\Roaming\Typora\typora-user-images\image-20200212172431438.png)

![image-20200212173042274](C:\Users\Sahil Siwatch\AppData\Roaming\Typora\typora-user-images\image-20200212173042274.png)

Make sure that the names are inside the box. 

ADDING Custom Name on PCB :

![image-20200212173233075](C:\Users\Sahil Siwatch\AppData\Roaming\Typora\typora-user-images\image-20200212173233075.png)

![image-20200212173640215](C:\Users\Sahil Siwatch\AppData\Roaming\Typora\typora-user-images\image-20200212173640215.png)

![image-20200212173713079](C:\Users\Sahil Siwatch\AppData\Roaming\Typora\typora-user-images\image-20200212173713079.png)

Adding Fill zones:

Select copper layer and add filled zones mode. 

![image-20200212173939455](C:\Users\Sahil Siwatch\AppData\Roaming\Typora\typora-user-images\image-20200212173939455.png)

Click on the edges of the frame and fill it. do the same for down copper layer

output: 

![image-20200212174616208](C:\Users\Sahil Siwatch\AppData\Roaming\Typora\typora-user-images\image-20200212174616208.png)

![image-20200212174641062](C:\Users\Sahil Siwatch\AppData\Roaming\Typora\typora-user-images\image-20200212174641062.png)

Final Step: Export gerber files.

![image-20200212174845473](C:\Users\Sahil Siwatch\AppData\Roaming\Typora\typora-user-images\image-20200212174845473.png)

![image-20200212175016287](C:\Users\Sahil Siwatch\AppData\Roaming\Typora\typora-user-images\image-20200212175016287.png)

![image-20200212175201460](C:\Users\Sahil Siwatch\AppData\Roaming\Typora\typora-user-images\image-20200212175201460.png)

![image-20200212175219563](C:\Users\Sahil Siwatch\AppData\Roaming\Typora\typora-user-images\image-20200212175219563.png)