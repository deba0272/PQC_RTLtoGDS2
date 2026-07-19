(globals
   version = 3
   io_order=default
)

(iopad

 (top

     (inst name = "pc3d01_sw0" place_status=fixed)
     (inst name = "pc3d01_sw1" place_status=fixed)
     (inst name = "pvdi_VDD_0" place_status=fixed)
     (inst name = "pv0i_VSS_0" place_status=fixed)
     (inst name = "pvda_VDDO_0" place_status=fixed)
     (inst name = "pv0a_VSSO_0" place_status=fixed)
     (inst name = "pc3d01_sw2" place_status=fixed)
     (inst name = "pc3d01_sw3" place_status=fixed)

 )

 (left

     (inst name = "pc3d01_clk" place_status=fixed)
     (inst name = "pc3c01_clk_buf" place_status=fixed)
     (inst name = "pc3o01_dummy1" place_status=fixed)
     (inst name = "pc3o01_dummy2" place_status=fixed)
     (inst name = "pvdi_VDD_1" place_status=fixed)
     (inst name = "pv0i_VSS_1" place_status=fixed)
     (inst name = "pvda_VDDO_1" place_status=fixed)
     (inst name = "pv0a_VSSO_1" place_status=fixed)

 )

 (right
     
     (inst name = "pc3o01_led0" place_status=fixed)
     (inst name = "pc3o01_led1" place_status=fixed)    
     (inst name = "pc3o01_led2" place_status=fixed)
     (inst name = "pc3o01_led3" place_status=fixed)
     (inst name = "pvdi_VDD_2" place_status=fixed)
     (inst name = "pv0i_VSS_2" place_status=fixed)
     (inst name = "pvda_VDDO_2" place_status=fixed)
     (inst name = "pv0a_VSSO_2" place_status=fixed)

 )

 (bottom
     
     (inst name = "pc3d01_start" place_status=fixed)
     (inst name = "pc3d01_rst_n" place_status=fixed)
     (inst name = "pvdi_VDD_3" place_status=fixed)
     (inst name = "pv0i_VSS_3" place_status=fixed)
     (inst name = "pvda_VDDO_3" place_status=fixed)
     (inst name = "pv0a_VSSO_3" place_status=fixed)
     (inst name = "pc3o01_done_led" place_status=fixed)
     (inst name = "pc3o01_dummy3" place_status=fixed)
 )

 (topright
      (inst name="corner_1"
       cell=pfrelr
       place_status=fixed
       orientation=R90
      )
 )

 (topleft
      (inst name="corner_3"
       cell=pfrelr
       place_status=fixed
       orientation=R180
      )
 )

 (bottomleft
      (inst name="corner_2"
       cell=pfrelr
       place_status=fixed
       orientation=R270
      )
 )

 (bottomright
      (inst name="corner_4"
       cell=pfrelr
       place_status=fixed
       orientation=R0
      )
 )

)
