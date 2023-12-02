*******************************************************************************
****** SRAM_Symmetric schematic SRAM8  <vs>  SRAM_Symmetric layout SRAM8
*******************************************************************************
                                                                                                                                                                                                                            
Pre-expand Statistics                      
======================                          Original       
Cell/Device                               schematic  layout
(g45p1svt) MOS                                    2       2
(g45n1svt) MOS                                    4       4
                                             ------  ------
Total                                             6       6

Reduce Statistics
=================                               Original             Reduced
Cell/Device                               schematic  layout   schematic  layout
(g45n1svt) MOS                                    4       4           4       4
(g45p1svt) MOS                                    2       2           2       2

Match Statistics
================                                  Total             Unmatched
Cell/Device                               schematic  layout   schematic  layout
(g45n1svt) MOS                                    4       4           0       0
(g45p1svt) MOS                                    2       2           0       0
                                             ------  ------      ------  ------
Total                                             6       6           0       0

Match Statistics for Nets                         7       8           0       1

===============================================================[SRAM_Symmetric]
====== Bad Initial Net Bindings (nets don't match) ============================
===============================================================================

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = (badbind 1)
Schematic Net:  Q
S       2   of g45n1svt {D S}
S      *1   of g45n1svt G
S       1   of g45p1svt {D S}
S      *1   of g45p1svt G

Layout Net:  Q
L       2   of g45n1svt {D S}
L       1   of g45p1svt {D S}

===============================================================[SRAM_Symmetric]
====== Unbound Pin ============================================================
===============================================================================

S Q_B

===============================================================[SRAM_Symmetric]
====== Unmatched Internal Nets ================================================
===============================================================================

L ?avS29

===============================================================[SRAM_Symmetric]
====== Suggested Terminal Rewire ==============================================
===============================================================================

In the layout, terminal 'G' of instance avD10_2 probably should connect to net 
Q instead of net avS29.
This makes a better match between layout net Q and schematic net Q.

In the layout, terminal 'G' of instance avD2_4 probably should connect to net 
Q instead of net avS29.
This makes a better match between layout net Q and schematic net Q.


===============================================================[SRAM_Symmetric]
====== Problem Schematic Nets (no exact match in layout) ======================
===============================================================================
S
S ?Q
S       2   of g45n1svt {D S}
S       1   of g45n1svt G
S       1   of g45p1svt {D S}
S       1   of g45p1svt G

===============================================================[SRAM_Symmetric]
====== Problem Layout Nets (no exact match in schematic) ======================
===============================================================================
L
L ?Q
L       2   of g45n1svt {D S}
L       1   of g45p1svt {D S}
L
L ?avS29
L       1   of g45n1svt G
L       1   of g45p1svt G

===============================================================[SRAM_Symmetric]
====== Matched Instances with Bad Net Connections =============================
===============================================================================

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =(badcon 1)
Schematic Instance: PM0  g45n1svt
Layout Instance:    avD2_4  g45n1svt

Pin        SchNet                      : LayNet
---        ------                      : ------
G          Q                           : ?avS29

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =(badcon 2)
Schematic Instance: NM1  g45p1svt
Layout Instance:    avD10_2  g45p1svt

Pin        SchNet                      : LayNet
---        ------                      : ------
G          Q                           : ?avS29

===============================================================[SRAM_Symmetric]
====== Summary of Errors ======================================================
===============================================================================

Schematic  Layout     Error Type
---------  ------     ----------
 1          1         Bad Initial Net Bindings
 -          2         Suggested Terminal Rewire
 -          1         Unmatched Internal Nets
 2          2         Matched Instances with Bad Net Connections
 1          -         Unbound Pin

