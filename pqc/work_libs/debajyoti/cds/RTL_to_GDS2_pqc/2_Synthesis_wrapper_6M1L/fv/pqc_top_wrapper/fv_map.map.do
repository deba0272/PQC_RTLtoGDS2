
//input ports
add mapped point clk clk -type PI PI
add mapped point rst_n rst_n -type PI PI
add mapped point start start -type PI PI
add mapped point sw[3] sw[3] -type PI PI
add mapped point sw[2] sw[2] -type PI PI
add mapped point sw[1] sw[1] -type PI PI
add mapped point sw[0] sw[0] -type PI PI

//output ports
add mapped point led[3] led[3] -type PO PO
add mapped point led[2] led[2] -type PO PO
add mapped point led[1] led[1] -type PO PO
add mapped point led[0] led[0] -type PO PO
add mapped point done_led done_led -type PO PO

//inout ports




//Sequential Pins
add mapped point uut/uut/valid_out/q uut/uut_valid_out_reg/Q -type DFF DFF
add mapped point uut/uut/M_OUT_REAL[3]/q uut/uut_M_OUT_REAL_reg[3]/Q -type DFF DFF
add mapped point uut/uut/M_OUT_REAL[0]/q uut/uut_M_OUT_REAL_reg[0]/Q -type DFF DFF
add mapped point uut/uut/M_OUT_REAL[1]/q uut/uut_M_OUT_REAL_reg[1]/Q -type DFF DFF
add mapped point uut/uut/M_OUT_REAL[2]/q uut/uut_M_OUT_REAL_reg[2]/Q -type DFF DFF
add mapped point uut/uut/state[1]/q uut/uut_state_reg[1]/Q -type DFF DFF
add mapped point uut/uut/state[0]/q uut/uut_state_reg[0]/Q -type DFF DFF
add mapped point uut/uut/state[2]/q uut/uut_state_reg[2]/Q -type DFF DFF



//Black Boxes



//Empty Modules as Blackboxes
