REAd IMplementation Information fv/ADC_SAR1 -golden fv_map -revised ADC_SAR1_mv
SET PARAllel Option -threads 4 -license "xl lp gxl lpgxl eco ecogxl" -norelease_license
SET COmpare Options -threads 4
SET UNDEfined Cell black_box -noascend -both
ADD SEarch Path ../lib -library -both
REAd LIbrary -liberty -both /root/201038012/First_Sem/project/learn/work/../lib/slow.lib
REAd DEsign -verilog95 -golden -lastmod -noelab fv/ADC_SAR1/fv_map.v.gz
ELAborate DEsign -golden -root ADC_SAR1
REAd DEsign -verilog95 -revised -lastmod -noelab outputs_Mar02-16:56:27/ADC_SAR1_m.v
ELAborate DEsign -revised -root ADC_SAR1
REPort DEsign Data
REPort BLack Box
SET FLatten Model -seq_constant
SET FLatten Model -seq_constant_x_to 0
SET FLatten Model -nodff_to_dlat_zero
SET FLatten Model -nodff_to_dlat_feedback
SET FLatten Model -hier_seq_merge
SET ANalyze Option -auto
SET SYstem Mode lec
REPort UNmapped Points -summary
REPort UNmapped Points -extra -unreachable -notmapped
ADD COmpared Points -all
COMpare
REPort COmpare Data -class nonequivalent -class abort -class notcompared
REPort VErification -verbose
REPort STatistics
WRIte VErification Information
REPort VErification Information
REPort VErification
RESET
SET VErification Information rtl_fv_map_db
REAd IMplementation Information fv/ADC_SAR1 -revised fv_map
SET PARAllel Option -threads 4 -license "xl lp gxl lpgxl eco ecogxl" -norelease_license
SET COmpare Options -threads 4
SET UNDEfined Cell black_box -noascend -both
ADD SEarch Path ../lib -library -both
REAd LIbrary -liberty -both /root/201038012/First_Sem/project/learn/work/../lib/slow.lib
SET UNDRiven Signal 0 -golden
SET NAming Style rc -golden
SET NAming Rule %s[%d] -instance_array -golden
SET NAming Rule %s_reg -register -golden
SET NAming Rule %L.%s %L[%d].%s %s -instance -golden
SET NAming Rule %L.%s %L[%d].%s %s -variable -golden
SET HDl Options -const_port_extend
SET HDl Options -VERILOG_INCLUDE_DIR incdir:sep:src:cwd
DELete SEarch Path -all -design -golden
ADD SEarch Path ../rtl -design -golden
REAd DEsign -define SYNTHESIS -merge bbox -golden -lastmod -noelab -verilog2k ../rtl/SAR_RTL.v
ELAborate DEsign -golden -root ADC_SAR1 -rootonly -rootonly
REAd DEsign -verilog95 -revised -lastmod -noelab fv/ADC_SAR1/fv_map.v.gz
ELAborate DEsign -revised -root ADC_SAR1
UNIQuify -all -nolib -golden
REPort DEsign Data
REPort BLack Box
SET FLatten Model -seq_constant
SET FLatten Model -seq_constant_x_to 0
SET FLatten Model -nodff_to_dlat_zero
SET FLatten Model -nodff_to_dlat_feedback
SET FLatten Model -hier_seq_merge
SET ANalyze Option -auto
WRIte HIer_compare Dofile hier_tmp3.lec.do -noexact_pin_match -constraint -usage -replace -balanced_extraction -input_output_pin_equivalence\
   -prepend_string " analyze_datapath -module -verbose ; analyze_datapath   -verbose; "
RUN HIer_compare hier_tmp3.lec.do -dynamic_hierarchy
REPort VErification -hier -verbose
SET SYstem Mode lec
WRIte VErification Information
REPort VErification Information
EXIt -f
