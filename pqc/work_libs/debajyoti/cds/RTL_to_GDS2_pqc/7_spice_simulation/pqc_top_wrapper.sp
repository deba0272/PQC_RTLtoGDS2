* PQC Top Wrapper Post-Layout PEX Simulation Deck
* Generated for Calibre xRC / Spectre Netlist Compatibility

* ============================================================
* 1. SCL PDK Model Library Definitions
* ============================================================
.lib "/opt/tools/Cadence/Cadence_lib/scl_pdk_v3/SCLPDK_V3.0_KIT/scl180/pdk/cdns/sclpdk_v3/HOTCODE/models/ts18scl/default/hspice/ts18sl_scl.lib" tt_18 
.lib "/opt/tools/Cadence/Cadence_lib/scl_pdk_v3/SCLPDK_V3.0_KIT/scl180/pdk/cdns/sclpdk_v3/HOTCODE/models/ts18scl/default/hspice/ts18sl_scl.lib" tt_hv
.lib "/opt/tools/Cadence/Cadence_lib/scl_pdk_v3/SCLPDK_V3.0_KIT/scl180/pdk/cdns/sclpdk_v3/HOTCODE/models/ts18scl/default/hspice/ts18sl_scl.lib" diodes
.lib "/opt/tools/Cadence/Cadence_lib/scl_pdk_v3/SCLPDK_V3.0_KIT/scl180/pdk/cdns/sclpdk_v3/HOTCODE/models/ts18scl/default/hspice/ts18sl_scl.lib" res2t_typ
.lib "/opt/tools/Cadence/Cadence_lib/scl_pdk_v3/SCLPDK_V3.0_KIT/scl180/pdk/cdns/sclpdk_v3/HOTCODE/models/ts18scl/default/hspice/ts18sl_scl.lib" acc_typ

* ============================================================
* 2. Include PEX Netlist
* ============================================================
.include "./pqc_top_wrapper.pex.netlist"

* ============================================================
* 3. Subcircuit Instantiation (X_CC)
* CRITICAL: Pin order matches subckt pqc_top_wrapper exactly.
* ============================================================
X_CC VSSO_CORE VSS_CORE VDD_CORE VDDO_CORE \
led\[0\] led\[1\] led\[2\] led\[3\] done_led \
clk sw\[2\] sw\[0\] sw\[3\] sw\[1\] rst_n start \
pqc_top_wrapper

* ============================================================
* 4. Power Supplies & Ground Reference
* ============================================================
Vvdd   VDD_CORE   0 1.8
Vvddo  VDDO_CORE  0 1.8
Vvss   VSS_CORE   0 0
Vvsso  VSSO_CORE  0 0

* ============================================================
* 5. Simulation Control
* ============================================================
* Simulation runs up to 18 us based on the VCD timeline activity
.tran 500p 18us errpreset=liberal method=trap

.options post=1 lndp=1 probe
.probe v(*)
.options preset=vx fxm=standard fxmlevel=3

* ============================================================
* 6. VCD Vector Back-Annotation (Spectre Mode Switch)
* ============================================================
simulator lang=spectre

vcd_include "./post_route_simul.vcd" \ 
"./vcd.info"
