<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="9.5.0">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="2" name="Route2" color="16" fill="1" visible="no" active="no"/>
<layer number="3" name="Route3" color="17" fill="1" visible="no" active="no"/>
<layer number="4" name="Route4" color="18" fill="1" visible="no" active="no"/>
<layer number="5" name="Route5" color="19" fill="1" visible="no" active="no"/>
<layer number="6" name="Route6" color="25" fill="1" visible="no" active="no"/>
<layer number="7" name="Route7" color="26" fill="1" visible="no" active="no"/>
<layer number="8" name="Route8" color="27" fill="1" visible="no" active="no"/>
<layer number="9" name="Route9" color="28" fill="1" visible="no" active="no"/>
<layer number="10" name="Route10" color="29" fill="1" visible="no" active="no"/>
<layer number="11" name="Route11" color="30" fill="1" visible="no" active="no"/>
<layer number="12" name="Route12" color="20" fill="1" visible="no" active="no"/>
<layer number="13" name="Route13" color="21" fill="1" visible="no" active="no"/>
<layer number="14" name="Route14" color="22" fill="1" visible="no" active="no"/>
<layer number="15" name="Route15" color="23" fill="1" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="24" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="88" name="SimResults" color="9" fill="1" visible="yes" active="yes"/>
<layer number="89" name="SimProbes" color="9" fill="1" visible="yes" active="yes"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="untitled">
<packages>
<package name="ARDUINOMICROCLONE">
<pad name="TX0" x="-12.7" y="-5.08" drill="0.6" shape="square"/>
<pad name="RX1" x="-11.43" y="-5.08" drill="0.6" shape="square"/>
<pad name="GND_3" x="-10.16" y="-5.08" drill="0.6" shape="square"/>
<pad name="GND_2" x="-8.89" y="-5.08" drill="0.6" shape="square"/>
<pad name="2" x="-7.62" y="-5.08" drill="0.6" shape="square"/>
<pad name="3" x="-6.35" y="-5.08" drill="0.6" shape="square"/>
<pad name="4" x="-5.08" y="-5.08" drill="0.6" shape="square"/>
<pad name="5" x="-3.81" y="-5.08" drill="0.6" shape="square"/>
<pad name="6" x="-2.54" y="-5.08" drill="0.6" shape="square"/>
<pad name="7" x="-1.27" y="-5.08" drill="0.6" shape="square"/>
<pad name="8" x="0" y="-5.08" drill="0.6" shape="square"/>
<pad name="9" x="1.27" y="-5.08" drill="0.6" shape="square"/>
<pad name="RAW" x="-12.7" y="0" drill="0.6" shape="square"/>
<pad name="GND" x="-11.43" y="0" drill="0.6" shape="square"/>
<pad name="RST" x="-10.16" y="0" drill="0.6" shape="square"/>
<pad name="VCC" x="-8.89" y="0" drill="0.6" shape="square"/>
<pad name="A3" x="-7.62" y="0" drill="0.6" shape="square"/>
<pad name="A2" x="-6.35" y="0" drill="0.6" shape="square"/>
<pad name="A1" x="-5.08" y="0" drill="0.6" shape="square"/>
<pad name="A0" x="-3.81" y="0" drill="0.6" shape="square"/>
<pad name="15" x="-2.54" y="0" drill="0.6" shape="square"/>
<pad name="14" x="-1.27" y="0" drill="0.6" shape="square"/>
<pad name="16" x="0" y="0" drill="0.6" shape="square"/>
<pad name="10" x="1.27" y="0" drill="0.6" shape="square"/>
</package>
<package name="ENCODER">
<pad name="CLK" x="-12.7" y="7.62" drill="0.6" shape="square"/>
<pad name="DT" x="-12.7" y="6.35" drill="0.6" shape="square"/>
<pad name="SW" x="-12.7" y="5.08" drill="0.6" shape="square"/>
<pad name="+" x="-12.7" y="3.81" drill="0.6" shape="square"/>
<pad name="GND" x="-12.7" y="2.54" drill="0.6" shape="square"/>
</package>
</packages>
<symbols>
<symbol name="ARDUINOMICROCLONE">
<pin name="TX0" x="-35.56" y="25.4" visible="pin" length="middle"/>
<pin name="RX1" x="-35.56" y="22.86" visible="pin" length="middle"/>
<pin name="GND_1" x="-35.56" y="20.32" visible="pin" length="middle"/>
<pin name="GND_2" x="-35.56" y="17.78" visible="pin" length="middle"/>
<pin name="2" x="-35.56" y="15.24" visible="pin" length="middle"/>
<pin name="3" x="-35.56" y="12.7" visible="pin" length="middle"/>
<pin name="4" x="-35.56" y="10.16" visible="pin" length="middle"/>
<pin name="5" x="-35.56" y="7.62" visible="pin" length="middle"/>
<pin name="6" x="-35.56" y="5.08" visible="pin" length="middle"/>
<pin name="7" x="-35.56" y="2.54" visible="pin" length="middle"/>
<pin name="8" x="-35.56" y="0" visible="pin" length="middle"/>
<pin name="9" x="-35.56" y="-2.54" visible="pin" length="middle"/>
<pin name="RAW" x="-5.08" y="25.4" visible="pin" length="middle" rot="R180"/>
<pin name="GND" x="-5.08" y="22.86" visible="pin" length="middle" rot="R180"/>
<pin name="RST" x="-5.08" y="20.32" visible="pin" length="middle" rot="R180"/>
<pin name="VCC" x="-5.08" y="17.78" visible="pin" length="middle" rot="R180"/>
<pin name="A3" x="-5.08" y="15.24" visible="pin" length="middle" rot="R180"/>
<pin name="A2" x="-5.08" y="12.7" visible="pin" length="middle" rot="R180"/>
<pin name="A1" x="-5.08" y="10.16" visible="pin" length="middle" rot="R180"/>
<pin name="A0" x="-5.08" y="7.62" visible="pin" length="middle" rot="R180"/>
<pin name="15" x="-5.08" y="5.08" visible="pin" length="middle" rot="R180"/>
<pin name="14" x="-5.08" y="2.54" visible="pin" length="middle" rot="R180"/>
<pin name="16" x="-5.08" y="0" visible="pin" length="middle" rot="R180"/>
<pin name="10" x="-5.08" y="-2.54" visible="pin" length="middle" rot="R180"/>
<wire x1="-33.02" y1="27.94" x2="-33.02" y2="-5.08" width="0.254" layer="94"/>
<wire x1="-33.02" y1="-5.08" x2="-7.62" y2="-5.08" width="0.254" layer="94"/>
<wire x1="-7.62" y1="-5.08" x2="-7.62" y2="27.94" width="0.254" layer="94"/>
<wire x1="-7.62" y1="27.94" x2="-15.24" y2="27.94" width="0.254" layer="94"/>
<wire x1="-15.24" y1="27.94" x2="-25.4" y2="27.94" width="0.254" layer="94"/>
<wire x1="-33.02" y1="27.94" x2="-25.4" y2="27.94" width="0.254" layer="94"/>
<wire x1="-25.4" y1="27.94" x2="-25.4" y2="30.48" width="0.254" layer="94"/>
<wire x1="-25.4" y1="30.48" x2="-15.24" y2="30.48" width="0.254" layer="94"/>
<wire x1="-15.24" y1="30.48" x2="-15.24" y2="27.94" width="0.254" layer="94"/>
<text x="-22.86" y="27.94" size="1.778" layer="94">USB</text>
</symbol>
<symbol name="ENCODER">
<pin name="CLK" x="-25.4" y="17.78" visible="pin" length="middle"/>
<pin name="DT" x="-25.4" y="15.24" visible="pin" length="middle"/>
<pin name="SW" x="-25.4" y="12.7" visible="pin" length="middle"/>
<pin name="GND" x="-25.4" y="7.62" visible="pin" length="middle"/>
<pin name="+" x="-25.4" y="10.16" visible="pin" length="middle"/>
<wire x1="-22.86" y1="27.94" x2="-22.86" y2="2.54" width="0.254" layer="94"/>
<wire x1="-22.86" y1="2.54" x2="5.08" y2="2.54" width="0.254" layer="94"/>
<wire x1="5.08" y1="2.54" x2="5.08" y2="27.94" width="0.254" layer="94"/>
<circle x="-17.78" y="22.86" radius="2.54" width="0.254" layer="94"/>
<circle x="-2.54" y="22.86" radius="2.54" width="0.254" layer="94"/>
<wire x1="-22.86" y1="27.94" x2="5.08" y2="27.94" width="0.254" layer="94"/>
<wire x1="-10.16" y1="17.78" x2="-10.16" y2="5.08" width="0.254" layer="94"/>
<wire x1="-10.16" y1="5.08" x2="2.54" y2="5.08" width="0.254" layer="94"/>
<wire x1="2.54" y1="5.08" x2="2.54" y2="17.78" width="0.254" layer="94"/>
<wire x1="2.54" y1="17.78" x2="-10.16" y2="17.78" width="0.254" layer="94"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="ARDUINOMICROCLONE">
<description>Arduino Micro Clone</description>
<gates>
<gate name="G$1" symbol="ARDUINOMICROCLONE" x="-35.56" y="-2.54"/>
</gates>
<devices>
<device name="" package="ARDUINOMICROCLONE">
<connects>
<connect gate="G$1" pin="10" pad="10"/>
<connect gate="G$1" pin="14" pad="14"/>
<connect gate="G$1" pin="15" pad="15"/>
<connect gate="G$1" pin="16" pad="16"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
<connect gate="G$1" pin="5" pad="5"/>
<connect gate="G$1" pin="6" pad="6"/>
<connect gate="G$1" pin="7" pad="7"/>
<connect gate="G$1" pin="8" pad="8"/>
<connect gate="G$1" pin="9" pad="9"/>
<connect gate="G$1" pin="A0" pad="A0"/>
<connect gate="G$1" pin="A1" pad="A1"/>
<connect gate="G$1" pin="A2" pad="A2"/>
<connect gate="G$1" pin="A3" pad="A3"/>
<connect gate="G$1" pin="GND" pad="GND"/>
<connect gate="G$1" pin="GND_1" pad="GND_2"/>
<connect gate="G$1" pin="GND_2" pad="GND_3"/>
<connect gate="G$1" pin="RAW" pad="RAW"/>
<connect gate="G$1" pin="RST" pad="RST"/>
<connect gate="G$1" pin="RX1" pad="RX1"/>
<connect gate="G$1" pin="TX0" pad="TX0"/>
<connect gate="G$1" pin="VCC" pad="VCC"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="ENCODER">
<gates>
<gate name="G$1" symbol="ENCODER" x="-60.96" y="7.62"/>
</gates>
<devices>
<device name="" package="ENCODER">
<connects>
<connect gate="G$1" pin="+" pad="+"/>
<connect gate="G$1" pin="CLK" pad="CLK"/>
<connect gate="G$1" pin="DT" pad="DT"/>
<connect gate="G$1" pin="GND" pad="GND"/>
<connect gate="G$1" pin="SW" pad="SW"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="U$1" library="untitled" deviceset="ARDUINOMICROCLONE" device=""/>
<part name="U$2" library="untitled" deviceset="ENCODER" device=""/>
</parts>
<sheets>
<sheet>
<plain>
<text x="40.64" y="53.34" size="1.778" layer="91">Not Used (Push Button)</text>
</plain>
<instances>
<instance part="U$1" gate="G$1" x="53.34" y="20.32" smashed="yes"/>
<instance part="U$2" gate="G$1" x="78.74" y="101.6" smashed="yes" rot="R90"/>
</instances>
<busses>
</busses>
<nets>
<net name="N$1" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="GND"/>
<pinref part="U$2" gate="G$1" pin="GND"/>
<wire x1="48.26" y1="43.18" x2="71.12" y2="43.18" width="0.1524" layer="91"/>
<wire x1="71.12" y1="43.18" x2="71.12" y2="76.2" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="VCC"/>
<pinref part="U$2" gate="G$1" pin="+"/>
<wire x1="48.26" y1="38.1" x2="68.58" y2="38.1" width="0.1524" layer="91"/>
<wire x1="68.58" y1="38.1" x2="68.58" y2="76.2" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="2"/>
<wire x1="17.78" y1="35.56" x2="5.08" y2="35.56" width="0.1524" layer="91"/>
<wire x1="5.08" y1="35.56" x2="5.08" y2="58.42" width="0.1524" layer="91"/>
<wire x1="5.08" y1="58.42" x2="63.5" y2="58.42" width="0.1524" layer="91"/>
<pinref part="U$2" gate="G$1" pin="DT"/>
<wire x1="63.5" y1="58.42" x2="63.5" y2="76.2" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="3"/>
<wire x1="17.78" y1="33.02" x2="2.54" y2="33.02" width="0.1524" layer="91"/>
<wire x1="2.54" y1="33.02" x2="2.54" y2="60.96" width="0.1524" layer="91"/>
<wire x1="2.54" y1="60.96" x2="60.96" y2="60.96" width="0.1524" layer="91"/>
<pinref part="U$2" gate="G$1" pin="CLK"/>
<wire x1="60.96" y1="60.96" x2="60.96" y2="76.2" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="SW"/>
<wire x1="66.04" y1="76.2" x2="66.04" y2="55.88" width="0.1524" layer="91"/>
<wire x1="66.04" y1="55.88" x2="7.62" y2="55.88" width="0.1524" layer="91"/>
<wire x1="7.62" y1="55.88" x2="7.62" y2="30.48" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="4"/>
<wire x1="7.62" y1="30.48" x2="17.78" y2="30.48" width="0.1524" layer="91"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
