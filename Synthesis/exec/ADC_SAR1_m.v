
// Generated by Cadence Genus(TM) Synthesis Solution 18.10-p003_1
// Generated on: Mar  2 2021 16:56:36 IST (Mar  2 2021 11:26:36 UTC)

// Verification Directory fv/ADC_SAR1 

module ADC_SAR1(digital_out, out_flag, sample, value, cmp, clk, enable);
  input cmp, clk, enable;
  output [7:0] digital_out, value;
  output out_flag, sample;
  wire cmp, clk, enable;
  wire [7:0] digital_out, value;
  wire out_flag, sample;
  wire [7:0] result;
  wire [7:0] temp;
  wire [1:0] state;
  wire UNCONNECTED, UNCONNECTED0, UNCONNECTED1, n_0, n_1, n_2, n_3, n_4;
  wire n_17, n_20, n_23, n_24, n_25, n_26, n_27, n_29;
  wire n_30, n_31, n_32, n_33, n_34, n_35, n_36, n_37;
  wire n_38, n_39, n_40, n_41, n_42, n_43, n_44, n_45;
  wire n_46, n_47, n_48, n_49, n_50, n_51, n_52, n_54;
  wire n_55, n_56, n_57, n_58, n_59, n_60, n_61, n_62;
  wire n_63, n_64, n_65, n_66, n_67, n_68, n_69, n_70;
  wire n_71, n_72, n_73, n_74, n_75, n_76, n_77, n_78;
  wire n_79, n_80, n_81, n_82, n_83, n_84, n_85, n_86;
  wire n_102, n_104, n_106, n_108, n_110, n_115, n_117, n_119;
  wire n_121, n_129, n_130, n_132, n_133, n_134, n_135, n_136;
  DFFHQX1 \result_reg[0] (.CK (clk), .D (n_76), .Q (result[0]));
  DFFHQX1 \result_reg[1] (.CK (clk), .D (n_75), .Q (result[1]));
  DFFHQX1 \result_reg[5] (.CK (clk), .D (n_79), .Q (result[5]));
  DFFHQX1 \result_reg[2] (.CK (clk), .D (n_73), .Q (result[2]));
  DFFHQX1 \result_reg[3] (.CK (clk), .D (n_78), .Q (result[3]));
  DFFHQX1 \result_reg[7] (.CK (clk), .D (n_85), .Q (result[7]));
  DFFHQX1 \result_reg[4] (.CK (clk), .D (n_80), .Q (result[4]));
  DFFHQX1 \result_reg[6] (.CK (clk), .D (n_86), .Q (result[6]));
  DFFHQX1 \temp_reg[4] (.CK (clk), .D (n_71), .Q (temp[4]));
  DFFHQX1 \temp_reg[3] (.CK (clk), .D (n_65), .Q (temp[3]));
  DFFHQX1 \temp_reg[2] (.CK (clk), .D (n_67), .Q (temp[2]));
  DFFHQX1 \temp_reg[5] (.CK (clk), .D (n_69), .Q (temp[5]));
  DFFHQX1 \temp_reg[6] (.CK (clk), .D (n_63), .Q (temp[6]));
  DFFQX4 \digital_out_reg[5] (.CK (clk), .D (n_60), .Q
       (digital_out[5]));
  DFFQX4 \digital_out_reg[1] (.CK (clk), .D (n_57), .Q
       (digital_out[1]));
  DFFQX4 \digital_out_reg[0] (.CK (clk), .D (n_58), .Q
       (digital_out[0]));
  DFFQX4 \digital_out_reg[3] (.CK (clk), .D (n_56), .Q
       (digital_out[3]));
  DFFQX4 \digital_out_reg[4] (.CK (clk), .D (n_61), .Q
       (digital_out[4]));
  OAI21XL g13467__8780(.A0 (n_68), .A1 (n_84), .B0 (n_42), .Y (n_86));
  OAI21XL g13468__4296(.A0 (n_84), .A1 (n_62), .B0 (n_45), .Y (n_85));
  OAI21X1 g13469__3772(.A0 (n_74), .A1 (n_81), .B0 (n_55), .Y (n_83));
  OAI21X1 g13470__1474(.A0 (n_72), .A1 (n_81), .B0 (n_54), .Y (n_82));
  OAI21XL g13459__4547(.A0 (n_84), .A1 (n_64), .B0 (n_49), .Y (n_80));
  OAI21XL g13466__9682(.A0 (n_84), .A1 (n_70), .B0 (n_36), .Y (n_79));
  OAI21XL g13464__2683(.A0 (n_84), .A1 (n_66), .B0 (n_51), .Y (n_78));
  OAI21XL g13461__1309(.A0 (n_84), .A1 (n_29), .B0 (n_35), .Y (n_76));
  OAI21XL g13462__6877(.A0 (n_84), .A1 (n_74), .B0 (n_33), .Y (n_75));
  OAI21XL g13463__2900(.A0 (n_84), .A1 (n_72), .B0 (n_34), .Y (n_73));
  DFFQX1 \temp_reg[7] (.CK (clk), .D (n_52), .Q (temp[7]));
  OAI21X1 g13447__2391(.A0 (n_70), .A1 (n_81), .B0 (n_38), .Y (n_71));
  OAI21X1 g13465__7675(.A0 (n_68), .A1 (n_81), .B0 (n_41), .Y (n_69));
  OAI21X1 g13448__7118(.A0 (n_66), .A1 (n_81), .B0 (n_40), .Y (n_67));
  OAI21X1 g13449__8757(.A0 (n_64), .A1 (n_81), .B0 (n_39), .Y (n_65));
  DFFQX4 \state_reg[1] (.CK (clk), .D (n_46), .Q (state[1]));
  OAI21X1 g13460__1786(.A0 (n_62), .A1 (n_81), .B0 (n_37), .Y (n_63));
  OAI21XL g13478__5953(.A0 (n_59), .A1 (n_2), .B0 (n_43), .Y (n_61));
  OAI21XL g13480__5703(.A0 (n_59), .A1 (n_3), .B0 (n_47), .Y (n_60));
  OAI21XL g13481__7114(.A0 (n_59), .A1 (n_1), .B0 (n_32), .Y (n_58));
  OAI21XL g13482__5266(.A0 (n_59), .A1 (n_4), .B0 (n_48), .Y (n_57));
  OAI21XL g13483__2250(.A0 (n_59), .A1 (n_0), .B0 (n_44), .Y (n_56));
  NAND2XL g13472__6083(.A (n_133), .B (temp[0]), .Y (n_55));
  NAND2XL g13473__2703(.A (n_133), .B (temp[1]), .Y (n_54));
  OAI21XL g13479__5795(.A0 (n_130), .A1 (n_62), .B0 (n_50), .Y (n_52));
  DFFQX4 \state_reg[0] (.CK (clk), .D (n_30), .Q (state[0]));
  NAND2XL g13490__7344(.A (n_50), .B (result[3]), .Y (n_51));
  NAND2XL g13491__1840(.A (n_50), .B (result[4]), .Y (n_49));
  NAND2XL g13492__5019(.A (digital_out[1]), .B (n_59), .Y (n_48));
  NAND2XL g13493__1857(.A (n_31), .B (digital_out[5]), .Y (n_47));
  INVXL g13495(.A (n_133), .Y (n_46));
  NAND2XL g13496__9906(.A (n_50), .B (result[7]), .Y (n_45));
  NAND2XL g13497__8780(.A (digital_out[3]), .B (n_59), .Y (n_44));
  NAND2XL g13498__4296(.A (digital_out[4]), .B (n_59), .Y (n_43));
  NAND2XL g13500__3772(.A (n_50), .B (result[6]), .Y (n_42));
  NAND2X2 g13506__1474(.A (n_115), .B (n_136), .Y (n_84));
  AOI31X1 g13471__4547(.A0 (temp[5]), .A1 (n_119), .A2 (n_102), .B0
       (n_23), .Y (n_41));
  AOI31X1 g13474__9682(.A0 (temp[2]), .A1 (n_115), .A2 (n_102), .B0
       (n_27), .Y (n_40));
  AOI31X1 g13475__2683(.A0 (temp[3]), .A1 (n_115), .A2 (n_102), .B0
       (n_24), .Y (n_39));
  AOI31X1 g13476__1309(.A0 (temp[4]), .A1 (n_115), .A2 (n_102), .B0
       (n_25), .Y (n_38));
  AOI31X1 g13484__6877(.A0 (temp[6]), .A1 (n_115), .A2 (n_110), .B0
       (n_26), .Y (n_37));
  NAND2XL g13485__2900(.A (n_50), .B (result[5]), .Y (n_36));
  NAND2XL g13486__2391(.A (n_50), .B (result[0]), .Y (n_35));
  NAND2XL g13487__7675(.A (n_50), .B (result[2]), .Y (n_34));
  NAND2XL g13488__7118(.A (n_50), .B (result[1]), .Y (n_33));
  NAND2XL g13489__8757(.A (digital_out[0]), .B (n_59), .Y (n_32));
  CLKINVX1 g13507(.A (n_31), .Y (n_77));
  AOI21X1 g13514__5953(.A0 (n_29), .A1 (n_119), .B0 (n_132), .Y (n_30));
  CLKINVX2 g13511(.A (n_130), .Y (n_81));
  OAI32XL g13501__5703(.A0 (state[0]), .A1 (state[1]), .A2 (n_72), .B0
       (enable), .B1 (n_72), .Y (n_27));
  OAI32X1 g13499__7114(.A0 (n_68), .A1 (state[1]), .A2 (n_106), .B0
       (enable), .B1 (n_68), .Y (n_26));
  OAI32X1 g13503__5266(.A0 (state[1]), .A1 (n_64), .A2 (n_106), .B0
       (enable), .B1 (n_64), .Y (n_25));
  OAI32X1 g13502__2250(.A0 (state[1]), .A1 (n_66), .A2 (n_106), .B0
       (enable), .B1 (n_66), .Y (n_24));
  OAI32X1 g13504__2703(.A0 (n_70), .A1 (state[1]), .A2 (n_106), .B0
       (enable), .B1 (n_70), .Y (n_23));
  NAND2X1 g13508__7344(.A (n_134), .B (enable), .Y (n_31));
  NAND2X2 g13509__1840(.A (n_115), .B (n_20), .Y (n_59));
  NAND2X2 g13510__5019(.A (n_121), .B (n_20), .Y (n_50));
  CLKAND2X2 g13524__1857(.A (n_110), .B (n_121), .Y (sample));
  OAI21X1 g13513__9906(.A0 (state[1]), .A1 (state[0]), .B0 (enable), .Y
       (n_17));
  CLKBUFX2 g13523(.A (n_134), .Y (out_flag));
  OR2X1 g13516__4296(.A (temp[0]), .B (result[0]), .Y (value[0]));
  OR2X1 g13525__3772(.A (temp[2]), .B (result[2]), .Y (value[2]));
  OR2X1 g13519__1474(.A (temp[6]), .B (result[6]), .Y (value[6]));
  CLKAND2X3 g13529__4547(.A (enable), .B (state[0]), .Y (n_20));
  OR2X1 g13518__2683(.A (temp[1]), .B (result[1]), .Y (value[1]));
  OR2X1 g13520__1309(.A (temp[4]), .B (result[4]), .Y (value[4]));
  OR2X1 g13526__6877(.A (result[7]), .B (temp[7]), .Y (value[7]));
  OR2X1 g13527__2900(.A (temp[5]), .B (result[5]), .Y (value[5]));
  OR2X1 g13521__2391(.A (temp[3]), .B (result[3]), .Y (value[3]));
  INVXL g13540(.A (result[1]), .Y (n_4));
  INVXL g13533(.A (result[5]), .Y (n_3));
  CLKINVX1 g13538(.A (temp[6]), .Y (n_68));
  CLKINVX1 g13544(.A (temp[5]), .Y (n_70));
  CLKINVX1 g13537(.A (temp[2]), .Y (n_72));
  INVXL g13531(.A (result[4]), .Y (n_2));
  INVXL g13532(.A (result[0]), .Y (n_1));
  INVXL g13541(.A (result[3]), .Y (n_0));
  CLKINVX1 g13534(.A (temp[7]), .Y (n_62));
  CLKINVX1 g13536(.A (temp[4]), .Y (n_64));
  CLKINVX1 g13543(.A (temp[3]), .Y (n_66));
  INVX1 fopt13577(.A (n_104), .Y (n_102));
  CLKINVX1 fopt13579(.A (state[0]), .Y (n_104));
  CLKINVX2 fopt13580(.A (n_108), .Y (n_106));
  CLKINVX2 fopt13582(.A (state[0]), .Y (n_108));
  INVXL fopt13583(.A (n_104), .Y (n_110));
  EDFFX4 \digital_out_reg[2] (.CK (clk), .D (result[2]), .E (n_77), .Q
       (digital_out[2]), .QN (UNCONNECTED));
  EDFFX4 \digital_out_reg[6] (.CK (clk), .D (result[6]), .E (n_77), .Q
       (digital_out[6]), .QN (UNCONNECTED0));
  INVXL fopt13595(.A (n_121), .Y (n_119));
  CLKINVX2 fopt13597(.A (state[1]), .Y (n_121));
  INVX2 fopt13599(.A (n_117), .Y (n_115));
  INVX2 fopt13601(.A (state[1]), .Y (n_117));
  CLKAND2X2 g13515__13602(.A (n_129), .B (state[1]), .Y (n_130));
  NOR2BX2 g13528__13603(.AN (enable), .B (state[0]), .Y (n_129));
  INVXL g13604(.A (n_129), .Y (n_132));
  AO21X1 g2(.A0 (state[0]), .A1 (state[1]), .B0 (n_17), .Y (n_133));
  CLKAND2X6 g13530__13605(.A (state[1]), .B (state[0]), .Y (n_134));
  NOR2X1 g14(.A (n_135), .B (state[0]), .Y (n_136));
  NAND2XL g15(.A (cmp), .B (enable), .Y (n_135));
  DFFX2 \temp_reg[1] (.CK (clk), .D (n_82), .Q (temp[1]), .QN (n_74));
  DFFX2 \temp_reg[0] (.CK (clk), .D (n_83), .Q (temp[0]), .QN (n_29));
  EDFFX2 \digital_out_reg[7] (.CK (clk), .D (result[7]), .E (n_77), .Q
       (digital_out[7]), .QN (UNCONNECTED1));
endmodule

