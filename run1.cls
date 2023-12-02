*******************************************************************************
****** nand3 schematic Final_Project  <vs>  nand3 layout Final_Project
*******************************************************************************

Filter/Reduce statistics only. Network matching was OK.
                                                                                                                                                                   
Pre-expand Statistics                      
======================                          Original       
Cell/Device                               schematic  layout
(g45n1svt) MOS                                    3       3
(g45p1svt) MOS                                    3       3
                                             ------  ------
Total                                             6       6

Reduce Statistics
=================                               Original             Reduced
Cell/Device                               schematic  layout   schematic  layout
(g45n1svt) MOS                                    3       3           0       0
(g45p1svt) MOS                                    3       3           0       0
(g45n1svt:SerMos3#1) MosBlk                       -       -           1       1
(g45p1svt:ParMos3#1) MosBlk                       -       -           1       1
                                             ------  ------      ------  ------
Total                                             6       6           2       2

*******************************************************************************
****** inverter schematic Final_Project  <vs>  inverter layout Final_Project
*******************************************************************************

Filter/Reduce statistics only. Network matching was OK.
                                                                                                                                                                   
Pre-expand Statistics                      
======================                          Original       
Cell/Device                               schematic  layout
(g45p1svt) MOS                                    1       1
(g45n1svt) MOS                                    1       1
                                             ------  ------
Total                                             2       2

Reduce Statistics
=================                               Original             Reduced
Cell/Device                               schematic  layout   schematic  layout
(g45n1svt) MOS                                    1       1           1       1
(g45p1svt) MOS                                    1       1           1       1
                                             ------  ------      ------  ------
Total                                             2       2           2       2

*******************************************************************************
****** ROW_DECODER schematic SRAM8  <vs>  ROW_DECODER layout SRAM8
*******************************************************************************

Filter/Reduce statistics only. Network matching was OK.
                                                                                                                                                                   
Pre-expand Statistics                      
======================                          Original       
Cell/Device                               schematic  layout
(nand3 schematic Final_Project, nand3) Cell               4       4
(inverter schematic Final_Project, inverter) Cell         6       6
                                             ------  ------
Total                                            10      10

Reduce Statistics
=================                               Original             Reduced
Cell/Device                               schematic  layout   schematic  layout
(inverter) Cell                                   6       6           6       6
(nand3) Cell                                      4       4           4       4
                                             ------  ------      ------  ------
Total                                            10      10          10      10

Schematic and Layout Match
