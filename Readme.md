<a name="_page0_x69.00_y72.00"></a>SRAM Array Final Project 

Fix: tri-state buffers should be low true, how to measure the precharge time, how to measure the write time, how to measure the read time, create a better timing chart by write all addresses, read all addresses  

<a name="_page0_x69.00_y185.00"></a>Overview 

In this project you will design, simulate, and layout an 8x2 SRAM array in Cadence using the 45 nm process.  

Contents 

[SRAM Array Final Project .............................................................................................................................. 1 ](#_page0_x69.00_y72.00)[Overview ................................................................................................................................................... 1 ](#_page0_x69.00_y185.00)[Top Level Architecture  ............................................................................................................................. 2 ](#_page1_x69.00_y72.00)[Block Descriptions ..................................................................................................................................... 3 ](#_page2_x69.00_y594.00)[SRAM Cell .............................................................................................................................................. 3 ](#_page2_x69.00_y629.00)[Row Decoder ......................................................................................................................................... 4 ](#_page3_x69.00_y231.00)[Column Decoder ................................................................................................................................... 4 ](#_page3_x69.00_y308.00)[Read-Write Control ............................................................................................................................... 4 ](#_page3_x69.00_y399.00)[Sense Amplifier ..................................................................................................................................... 4 ](#_page3_x69.00_y475.00)

[Full Schematic ........................................................................................................................................... 4 ](#_page3_x69.00_y555.00)[Simulation ................................................................................................................................................. 6 ](#_page5_x69.00_y72.00)[Decoders ............................................................................................................................................... 6 ](#_page5_x69.00_y104.00)[Sense Amplifier ..................................................................................................................................... 6 ](#_page5_x69.00_y166.00)[Overall ................................................................................................................................................... 6 ](#_page5_x69.00_y213.00)[Layout........................................................................................................................................................ 6 ](#_page5_x69.00_y652.00)[FileZilla ...................................................................................................................................................... 7 ](#_page6_x69.00_y116.00)[Deliverables............................................................................................................................................... 7 ](#_page6_x69.00_y194.00)

[TA Recommendations ............................................................................................................................... 8 ](#_page7_x69.00_y307.00)

<a name="_page1_x69.00_y72.00"></a>Top Level Architecture 

The block diagram of the system that you will be designing is shown below. The circuit connections for the architecture are shown on the next page. **It is highly recommended that you design each module separately and verify the functionality of each module, check for its robustness and then move on to design the next module separately.** Start implementing the simpler blocks first, so that you get comfortable with the tool as you proceed with the project. Read through the CMOS SRAM material given in the book in Chapter 12. Read the material twice or thrice until you get a good understanding of the design. Also go through decoder designs and the design of the differential amplifiers can be found on web or in books. I will not be providing the schematic of these two modules. You will make the choice for the decoder and differential amplifier design that you want to use for this project. 

![](/img/Aspose.Words.a0ccc887-6e96-4a10-8915-e225388806cc.001.png)

<a name="_page2_x69.00_y594.00"></a>Block Descriptions  

<a name="_page2_x69.00_y629.00"></a>SRAM Cell 

Each blue box in the SRAM array shown above represents a SRAM bit cell. This is the basic storage element of the memory. Each bit will be stored in one of these cells.  

![](/img/Aspose.Words.a0ccc887-6e96-4a10-8915-e225388806cc.002.png)

<a name="_page3_x69.00_y231.00"></a>Row Decoder 

This is the logic which selects which row of the SRAM array to write to or read from. For an 8x2 SRAM array, an address decoder takes in the 3 address lines (A2:0), given as stimuli, and decodes them to generate 8 word lines (WL7:0) for the SRAM array. 

<a name="_page3_x69.00_y308.00"></a>Column Decoder 

This block, which is very similar to the row decoder, is the logic which selects which column of the SRAM array to write to or read from. For two columns the address decoder takes in only one address line(A3/A2), given as a stimulus, and decodes it to generate 2 control signals to enable the proper bit lines. 

<a name="_page3_x69.00_y399.00"></a>Read-Write Control 

Read and write will be separate signals in this circuit. Read and write cannot both be high at the same time. However, if read and write are both low, then it is assumed that data is neither being written to nor read from the SRAM array.  

<a name="_page3_x69.00_y475.00"></a>Sense Amplifier 

A differential sense amplifier will amplify the small difference in the bit lines. This allows the data to be read much faster, for the amplification method is much faster than waiting for the data to rise or fall to its full value.  

<a name="_page3_x69.00_y555.00"></a>Full Schematic 

Once you design each module and test it, you can put it all together and integrate the design and then test for the functionality. A circuit diagram of the overall design follows. 

![](/img/Aspose.Words.a0ccc887-6e96-4a10-8915-e225388806cc.003.jpeg)

Each row in the SRAM array shown above is accessed using an 8-bit address word (WL7:0). Each column in the array is accessed using a 2-bit address word (BL1:0). The address lines, the read and write signals, and the input data are inputs to the circuit and use CLK1. The bit lines are precharged using CLK2. CLK1 and CLK2 will be nonoverlapping clocks. Be sure to connect all bulks for the NMOS transistors to ground and all bulks for the PMOS transistors to VDD.  

<a name="_page5_x69.00_y72.00"></a>Simulation 

<a name="_page5_x69.00_y104.00"></a>Decoders 

Create a simulation to show that you can access all word lines and bit lines using only your address lines.  

<a name="_page5_x69.00_y166.00"></a>Sense Amplifier 

Create a simulation to show that the sense amplifier is functional.  

<a name="_page5_x69.00_y213.00"></a>Overall 

Only combine your blocks together if you are certain that each block functions correctly on its own. Create a simulation to show proper functioning of the SRAM array. Determine the precharge time. This is the time it takes to precharge the bitlines from 10% to 90% of its value. Show writing both 1 and 0 to multiple addresses. Also, show reading both 1 and 0 from multiple addresses. Measure read and write times for both 1 and 0.  

VDD will be 1.1 V. Simulate using typical conditions. Rise and fall times for all signals is 100 ps. CLK1 will have a duty cycle of 40% and CLK2 will have a duty cycle of 60%. Both clocks frequencies will be the same, but it is up to your group to determine what frequency at which your design will successfully run. An example is shown below.  

![](/img/Aspose.Words.a0ccc887-6e96-4a10-8915-e225388806cc.004.jpeg)

<a name="_page5_x69.00_y652.00"></a>Layout 

Try to minimize the area of your design. Use the single orientation poly for the SRAM cell as you did in the previous assignment. Poly for the other cells do not have to be in one direction. Again, I recommend combining your blocks together in layout after you have passed both DRC and LVS for each individual block. You will need to pass both DRC and LVS for the full SRAM array layout.  

<a name="_page6_x69.00_y116.00"></a>FileZilla 

In order to transfer files between computers, use FileZilla. For host, use the desktop name (ex: ece-n288-lnx06.ad.ufl.edu). The username and password are your Gatorlink username and password. Use port 22.  

<a name="_page6_x69.00_y194.00"></a>Deliverables 

For the report, IEEE format is required (maximum 5 pages including reference). The template will be uploaded to Canvas. Figures like full-size schematic, layout, simulation results and any figures you want to include but exceeds the page limitation of the report can be put it into a separate appendix file. The following contents are required in the final report or the appendix file. 

General 

- Team members 
- Description of work for each team member 

Schematics 

- Decoders 
- Sense amplifier 
- Full SRAM array 

Simulations (based on **entire SRAM array**) 

- Setup 
- Precharge time 
- Simulation of a write for both 1 and 0 to multiple addresses 
- Write times for 1 and 0 
- Simulation of a read for both 1 and 0 from multiple addresses 
- Read times for 1 and 0 

Layout (Use ruler to show the dimension of each layout) 

- Design considerations 
- Single SRAM cell 
- Area of single SRAM cell 
- DRC for the single SRAM cell 
- LVS for the single SRAM cell 
- Decoders 
- DRC for the decoders 
- LVS for the decoders 
- Read-write control 
- DRC for the read-write control 
- LVS for the read-write control 
- Sense amplifier 
- Area of the sense amplifier 
- DRC for the sense amplifier 
- LVS for the sense amplifier 
- Full SRAM array 
- Area of the full SRAM array 
- DRC for the full SRAM array 
- LVS for the full SRAM array 

Conclusion 

- Final thoughts 
- Any feedback 

<a name="_page7_x69.00_y307.00"></a>TA Recommendations 

How I would recommend breaking up the project...  

- SRAM array and precharge circuitry  
- Row decoder and column decoder  
- Read/write circuitry  
- Sense amplifier  

I recommend testing each block separately and combining once you know each block functions as it should. You may need to add signals for testing that will not be in your block specifically.  This is a common circuit to design and test, so please use Google as a resource. Email me with further questions.  

Draw stick diagram layouts before starting your layout in Virtuoso. Be sure to connect all your ground routing together and your power routing together.  

Plan for layout before you start. For instance, measure the largest instance in one block (or all the digital block), find out the width of it (in layout it will be height). Imagine you will connect many layouts together, one thing you can do is drawing the VDD and VSS wire at the same location in each sub layout (width of VDD & VSS, distance between them are the same). Therefore, when you connect everything together on the top, you can easily align the VDD and VSS. If one row becomes too long, you can fold it and flip it on top or bottom of the other half. This will make your layout looks neat and help you reduce the area, and this is typically how people draw layout for digital circuit. 

SRAM array and precharge circuitry  

- Each SRAM bit should be minimum area  
- Try to design so that you have easy access to the bit lines, word lines, power, and ground  
- Think about using different metals for your bit lines and your VDD/GND routing  
- The precharge circuitry uses PMOS transistors to pull up your bit lines for readback  
- Testing signals: CLK2 (used for precharging the bit lines), bit lines, word lines, Q, Q\_bar  
- For testing read: if precharge goes low, your bit lines should go to VDD and you should only read back one bit at a time (meaning only one word line is selected)  
- For testing write: only select one word line at a time and check that whatever you put on the bit lines ends up stored in the cell, but does not end up stored in cells for which the word line is not selected  

Row decoder and column decoder  

- Look up decoder circuits and its truth table if you are unsure of the functioning of this block  
- Testing signals: CLK1, address lines, word lines, bit lines 
- For testing: count through different addresses and see that the appropriate word line is selected 

` `Read/write circuitry  

- This is detailed in the assignment  
- Think about how this will need to connect to the bit lines when designing your layout  
- Testing signals: CLK1, read/write, data, bit lines (may act as an input for reading, but output for writing) 
- For testing: read and write are separate signals  

Sense amplifier  

- There are multiple types of sense amplifiers online, but a differential sense amplifier is a basic one that you may want to use  
- Testing signals: BL and BL\_bar, enable, sense amp output  
- For testing: apply opposing signals to BL and BL\_bar and enable the amplifier and your output should match the expected output  
