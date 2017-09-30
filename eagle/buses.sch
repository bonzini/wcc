<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="8.3.2">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="16" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="14" fill="1" visible="no" active="no"/>
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
<layer number="50" name="dxf" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="53" name="tGND_GNDA" color="7" fill="9" visible="no" active="no"/>
<layer number="54" name="bGND_GNDA" color="1" fill="9" visible="no" active="no"/>
<layer number="56" name="wert" color="7" fill="1" visible="no" active="no"/>
<layer number="57" name="tCAD" color="7" fill="1" visible="no" active="no"/>
<layer number="59" name="tCarbon" color="7" fill="1" visible="no" active="no"/>
<layer number="60" name="bCarbon" color="7" fill="1" visible="no" active="no"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
<layer number="99" name="SpiceOrder" color="7" fill="1" visible="no" active="no"/>
<layer number="100" name="Muster" color="7" fill="1" visible="no" active="no"/>
<layer number="101" name="Patch_Top" color="12" fill="4" visible="yes" active="yes"/>
<layer number="102" name="Vscore" color="7" fill="1" visible="yes" active="yes"/>
<layer number="103" name="tMap" color="7" fill="1" visible="yes" active="yes"/>
<layer number="104" name="Name" color="16" fill="1" visible="yes" active="yes"/>
<layer number="105" name="tPlate" color="7" fill="1" visible="yes" active="yes"/>
<layer number="106" name="bPlate" color="7" fill="1" visible="yes" active="yes"/>
<layer number="107" name="Crop" color="7" fill="1" visible="yes" active="yes"/>
<layer number="108" name="tplace-old" color="10" fill="1" visible="yes" active="yes"/>
<layer number="109" name="ref-old" color="11" fill="1" visible="yes" active="yes"/>
<layer number="110" name="fp0" color="7" fill="1" visible="yes" active="yes"/>
<layer number="111" name="LPC17xx" color="7" fill="1" visible="yes" active="yes"/>
<layer number="112" name="tSilk" color="7" fill="1" visible="yes" active="yes"/>
<layer number="113" name="IDFDebug" color="7" fill="1" visible="yes" active="yes"/>
<layer number="114" name="Badge_Outline" color="11" fill="1" visible="no" active="no"/>
<layer number="115" name="ReferenceISLANDS" color="7" fill="1" visible="yes" active="yes"/>
<layer number="116" name="Patch_BOT" color="9" fill="4" visible="yes" active="yes"/>
<layer number="118" name="Rect_Pads" color="7" fill="1" visible="yes" active="yes"/>
<layer number="121" name="_tsilk" color="7" fill="1" visible="yes" active="yes"/>
<layer number="122" name="_bsilk" color="7" fill="1" visible="yes" active="yes"/>
<layer number="123" name="tTestmark" color="7" fill="1" visible="yes" active="yes"/>
<layer number="124" name="bTestmark" color="7" fill="1" visible="yes" active="yes"/>
<layer number="125" name="_tNames" color="7" fill="1" visible="yes" active="yes"/>
<layer number="126" name="_bNames" color="7" fill="1" visible="yes" active="yes"/>
<layer number="127" name="_tValues" color="7" fill="1" visible="yes" active="yes"/>
<layer number="128" name="_bValues" color="7" fill="1" visible="yes" active="yes"/>
<layer number="129" name="Mask" color="7" fill="1" visible="yes" active="yes"/>
<layer number="131" name="tAdjust" color="7" fill="1" visible="yes" active="yes"/>
<layer number="132" name="bAdjust" color="7" fill="1" visible="yes" active="yes"/>
<layer number="144" name="Drill_legend" color="7" fill="1" visible="yes" active="yes"/>
<layer number="150" name="Notes" color="7" fill="1" visible="yes" active="yes"/>
<layer number="151" name="HeatSink" color="7" fill="1" visible="yes" active="yes"/>
<layer number="152" name="_bDocu" color="7" fill="1" visible="yes" active="yes"/>
<layer number="153" name="FabDoc1" color="7" fill="1" visible="yes" active="yes"/>
<layer number="154" name="FabDoc2" color="7" fill="1" visible="yes" active="yes"/>
<layer number="155" name="FabDoc3" color="7" fill="1" visible="yes" active="yes"/>
<layer number="199" name="Contour" color="7" fill="1" visible="yes" active="yes"/>
<layer number="200" name="200bmp" color="1" fill="10" visible="yes" active="yes"/>
<layer number="201" name="201bmp" color="2" fill="10" visible="yes" active="yes"/>
<layer number="202" name="202bmp" color="3" fill="10" visible="yes" active="yes"/>
<layer number="203" name="203bmp" color="4" fill="10" visible="yes" active="yes"/>
<layer number="204" name="204bmp" color="5" fill="10" visible="yes" active="yes"/>
<layer number="205" name="205bmp" color="6" fill="10" visible="yes" active="yes"/>
<layer number="206" name="206bmp" color="7" fill="10" visible="yes" active="yes"/>
<layer number="207" name="207bmp" color="8" fill="10" visible="yes" active="yes"/>
<layer number="208" name="208bmp" color="9" fill="10" visible="yes" active="yes"/>
<layer number="209" name="209bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="210" name="210bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="211" name="211bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="212" name="212bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="213" name="213bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="214" name="214bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="215" name="215bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="216" name="216bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="217" name="217bmp" color="18" fill="1" visible="no" active="no"/>
<layer number="218" name="218bmp" color="19" fill="1" visible="no" active="no"/>
<layer number="219" name="219bmp" color="20" fill="1" visible="no" active="no"/>
<layer number="220" name="220bmp" color="21" fill="1" visible="no" active="no"/>
<layer number="221" name="221bmp" color="22" fill="1" visible="no" active="no"/>
<layer number="222" name="222bmp" color="23" fill="1" visible="no" active="no"/>
<layer number="223" name="223bmp" color="24" fill="1" visible="no" active="no"/>
<layer number="224" name="224bmp" color="25" fill="1" visible="no" active="no"/>
<layer number="225" name="225bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="226" name="226bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="227" name="227bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="228" name="228bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="229" name="229bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="230" name="230bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="231" name="231bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="232" name="Eagle3D_PG2" color="7" fill="1" visible="yes" active="yes"/>
<layer number="233" name="Eagle3D_PG3" color="7" fill="1" visible="yes" active="yes"/>
<layer number="248" name="Housing" color="7" fill="1" visible="yes" active="yes"/>
<layer number="249" name="Edge" color="7" fill="1" visible="yes" active="yes"/>
<layer number="250" name="Descript" color="3" fill="1" visible="no" active="no"/>
<layer number="251" name="SMDround" color="12" fill="11" visible="no" active="no"/>
<layer number="254" name="cooling" color="7" fill="1" visible="yes" active="yes"/>
<layer number="255" name="routoute" color="7" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="frames" urn="urn:adsk.eagle:library:229">
<description>&lt;b&gt;Frames for Sheet and Layout&lt;/b&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="A4L-LOC" urn="urn:adsk.eagle:symbol:13874/1" library_version="1">
<wire x1="256.54" y1="3.81" x2="256.54" y2="8.89" width="0.1016" layer="94"/>
<wire x1="256.54" y1="8.89" x2="256.54" y2="13.97" width="0.1016" layer="94"/>
<wire x1="256.54" y1="13.97" x2="256.54" y2="19.05" width="0.1016" layer="94"/>
<wire x1="256.54" y1="19.05" x2="256.54" y2="24.13" width="0.1016" layer="94"/>
<wire x1="161.29" y1="3.81" x2="161.29" y2="24.13" width="0.1016" layer="94"/>
<wire x1="161.29" y1="24.13" x2="215.265" y2="24.13" width="0.1016" layer="94"/>
<wire x1="215.265" y1="24.13" x2="256.54" y2="24.13" width="0.1016" layer="94"/>
<wire x1="246.38" y1="3.81" x2="246.38" y2="8.89" width="0.1016" layer="94"/>
<wire x1="246.38" y1="8.89" x2="256.54" y2="8.89" width="0.1016" layer="94"/>
<wire x1="246.38" y1="8.89" x2="215.265" y2="8.89" width="0.1016" layer="94"/>
<wire x1="215.265" y1="8.89" x2="215.265" y2="3.81" width="0.1016" layer="94"/>
<wire x1="215.265" y1="8.89" x2="215.265" y2="13.97" width="0.1016" layer="94"/>
<wire x1="215.265" y1="13.97" x2="256.54" y2="13.97" width="0.1016" layer="94"/>
<wire x1="215.265" y1="13.97" x2="215.265" y2="19.05" width="0.1016" layer="94"/>
<wire x1="215.265" y1="19.05" x2="256.54" y2="19.05" width="0.1016" layer="94"/>
<wire x1="215.265" y1="19.05" x2="215.265" y2="24.13" width="0.1016" layer="94"/>
<text x="217.17" y="15.24" size="2.54" layer="94">&gt;DRAWING_NAME</text>
<text x="217.17" y="10.16" size="2.286" layer="94">&gt;LAST_DATE_TIME</text>
<text x="230.505" y="5.08" size="2.54" layer="94">&gt;SHEET</text>
<text x="216.916" y="4.953" size="2.54" layer="94">Sheet:</text>
<frame x1="0" y1="0" x2="260.35" y2="179.07" columns="6" rows="4" layer="94"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="A4L-LOC" urn="urn:adsk.eagle:component:13926/1" prefix="FRAME" uservalue="yes" library_version="1">
<description>&lt;b&gt;FRAME&lt;/b&gt;&lt;p&gt;
DIN A4, landscape with location and doc. field</description>
<gates>
<gate name="G$1" symbol="A4L-LOC" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="SparkFun-Connectors" urn="urn:adsk.eagle:library:513">
<description>&lt;h3&gt;SparkFun Connectors&lt;/h3&gt;
This library contains electrically-functional connectors. 
&lt;br&gt;
&lt;br&gt;
We've spent an enormous amount of time creating and checking these footprints and parts, but it is &lt;b&gt; the end user's responsibility&lt;/b&gt; to ensure correctness and suitablity for a given componet or application. 
&lt;br&gt;
&lt;br&gt;If you enjoy using this library, please buy one of our products at &lt;a href=" www.sparkfun.com"&gt;SparkFun.com&lt;/a&gt;.
&lt;br&gt;
&lt;br&gt;
&lt;b&gt;Licensing:&lt;/b&gt; Creative Commons ShareAlike 4.0 International - https://creativecommons.org/licenses/by-sa/4.0/ 
&lt;br&gt;
&lt;br&gt;
You are welcome to use this library for commercial purposes. For attribution, we ask that when you begin to sell your device using our footprint, you email us with a link to the product being sold. We want bragging rights that we helped (in a very small part) to create your 8th world wonder. We would like the opportunity to feature your device on our homepage.</description>
<packages>
<package name="1X04" urn="urn:adsk.eagle:footprint:37702/1" library_version="1">
<description>&lt;h3&gt;Plated Through Hole - 4 Pin&lt;/h3&gt;
&lt;p&gt;Specifications:
&lt;ul&gt;&lt;li&gt;Pin count:4&lt;/li&gt;
&lt;li&gt;Pin pitch:0.1"&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;
&lt;p&gt;Example device(s):
&lt;ul&gt;&lt;li&gt;CONN_04&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;</description>
<wire x1="6.985" y1="1.27" x2="8.255" y2="1.27" width="0.2032" layer="21"/>
<wire x1="8.255" y1="1.27" x2="8.89" y2="0.635" width="0.2032" layer="21"/>
<wire x1="8.89" y1="-0.635" x2="8.255" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="3.81" y1="0.635" x2="4.445" y2="1.27" width="0.2032" layer="21"/>
<wire x1="4.445" y1="1.27" x2="5.715" y2="1.27" width="0.2032" layer="21"/>
<wire x1="5.715" y1="1.27" x2="6.35" y2="0.635" width="0.2032" layer="21"/>
<wire x1="6.35" y1="-0.635" x2="5.715" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="5.715" y1="-1.27" x2="4.445" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="4.445" y1="-1.27" x2="3.81" y2="-0.635" width="0.2032" layer="21"/>
<wire x1="6.985" y1="1.27" x2="6.35" y2="0.635" width="0.2032" layer="21"/>
<wire x1="6.35" y1="-0.635" x2="6.985" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="8.255" y1="-1.27" x2="6.985" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="-0.635" y1="1.27" x2="0.635" y2="1.27" width="0.2032" layer="21"/>
<wire x1="0.635" y1="1.27" x2="1.27" y2="0.635" width="0.2032" layer="21"/>
<wire x1="1.27" y1="-0.635" x2="0.635" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="1.27" y1="0.635" x2="1.905" y2="1.27" width="0.2032" layer="21"/>
<wire x1="1.905" y1="1.27" x2="3.175" y2="1.27" width="0.2032" layer="21"/>
<wire x1="3.175" y1="1.27" x2="3.81" y2="0.635" width="0.2032" layer="21"/>
<wire x1="3.81" y1="-0.635" x2="3.175" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="3.175" y1="-1.27" x2="1.905" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="1.905" y1="-1.27" x2="1.27" y2="-0.635" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="0.635" x2="-1.27" y2="-0.635" width="0.2032" layer="21"/>
<wire x1="-0.635" y1="1.27" x2="-1.27" y2="0.635" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="-0.635" x2="-0.635" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="0.635" y1="-1.27" x2="-0.635" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="8.89" y1="0.635" x2="8.89" y2="-0.635" width="0.2032" layer="21"/>
<pad name="1" x="0" y="0" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="2" x="2.54" y="0" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="3" x="5.08" y="0" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="4" x="7.62" y="0" drill="1.016" diameter="1.8796" rot="R90"/>
<rectangle x1="7.366" y1="-0.254" x2="7.874" y2="0.254" layer="51"/>
<rectangle x1="4.826" y1="-0.254" x2="5.334" y2="0.254" layer="51"/>
<rectangle x1="2.286" y1="-0.254" x2="2.794" y2="0.254" layer="51"/>
<rectangle x1="-0.254" y1="-0.254" x2="0.254" y2="0.254" layer="51"/>
<text x="-1.27" y="1.397" size="0.6096" layer="25" font="vector" ratio="20">&gt;NAME</text>
<text x="-1.27" y="-2.032" size="0.6096" layer="27" font="vector" ratio="20">&gt;VALUE</text>
</package>
<package name="1X04_NO_SILK" urn="urn:adsk.eagle:footprint:37711/1" library_version="1">
<description>&lt;h3&gt;Plated Through Hole - 4 Pin No Silk Outline&lt;/h3&gt;
&lt;p&gt;Specifications:
&lt;ul&gt;&lt;li&gt;Pin count:4&lt;/li&gt;
&lt;li&gt;Pin pitch:0.1"&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;
&lt;p&gt;Example device(s):
&lt;ul&gt;&lt;li&gt;CONN_04&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;</description>
<pad name="1" x="0" y="0" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="2" x="2.54" y="0" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="3" x="5.08" y="0" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="4" x="7.62" y="0" drill="1.016" diameter="1.8796" rot="R90"/>
<rectangle x1="7.366" y1="-0.254" x2="7.874" y2="0.254" layer="51"/>
<rectangle x1="4.826" y1="-0.254" x2="5.334" y2="0.254" layer="51"/>
<rectangle x1="2.286" y1="-0.254" x2="2.794" y2="0.254" layer="51"/>
<rectangle x1="-0.254" y1="-0.254" x2="0.254" y2="0.254" layer="51"/>
<text x="-1.27" y="1.397" size="0.6096" layer="25" font="vector" ratio="20">&gt;NAME</text>
<text x="-1.27" y="-2.032" size="0.6096" layer="27" font="vector" ratio="20">&gt;VALUE</text>
</package>
<package name="1X04_1MM_RA" urn="urn:adsk.eagle:footprint:37714/1" library_version="1">
<description>&lt;h3&gt;SMD- 4 Pin Right Angle &lt;/h3&gt;
&lt;p&gt;Specifications:
&lt;ul&gt;&lt;li&gt;Pin count:4&lt;/li&gt;
&lt;li&gt;Pin pitch:0.1"&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;
&lt;p&gt;Example device(s):
&lt;ul&gt;&lt;li&gt;CONN_04&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;</description>
<wire x1="-1.5" y1="-4.6" x2="1.5" y2="-4.6" width="0.254" layer="21"/>
<wire x1="-3" y1="-2" x2="-3" y2="-0.35" width="0.254" layer="21"/>
<wire x1="2.25" y1="-0.35" x2="3" y2="-0.35" width="0.254" layer="21"/>
<wire x1="3" y1="-0.35" x2="3" y2="-2" width="0.254" layer="21"/>
<wire x1="-3" y1="-0.35" x2="-2.25" y2="-0.35" width="0.254" layer="21"/>
<circle x="-2.5" y="0.3" radius="0.1414" width="0.4" layer="21"/>
<smd name="NC2" x="-2.8" y="-3.675" dx="1.2" dy="2" layer="1"/>
<smd name="NC1" x="2.8" y="-3.675" dx="1.2" dy="2" layer="1"/>
<smd name="1" x="-1.5" y="0" dx="0.6" dy="1.35" layer="1"/>
<smd name="2" x="-0.5" y="0" dx="0.6" dy="1.35" layer="1"/>
<smd name="3" x="0.5" y="0" dx="0.6" dy="1.35" layer="1"/>
<smd name="4" x="1.5" y="0" dx="0.6" dy="1.35" layer="1"/>
<text x="-1.397" y="-2.159" size="0.6096" layer="25" font="vector" ratio="20">&gt;NAME</text>
<text x="-1.651" y="-3.302" size="0.6096" layer="27" font="vector" ratio="20">&gt;VALUE</text>
</package>
</packages>
<packages3d>
<package3d name="1X04" urn="urn:adsk.eagle:package:38085/1" type="box" library_version="1">
<description>Plated Through Hole - 4 Pin
Specifications:
Pin count:4
Pin pitch:0.1"

Example device(s):
CONN_04
</description>
</package3d>
<package3d name="1X04_NO_SILK" urn="urn:adsk.eagle:package:38094/1" type="box" library_version="1">
<description>Plated Through Hole - 4 Pin No Silk Outline
Specifications:
Pin count:4
Pin pitch:0.1"

Example device(s):
CONN_04
</description>
</package3d>
<package3d name="1X04_1MM_RA" urn="urn:adsk.eagle:package:38096/1" type="box" library_version="1">
<description>SMD- 4 Pin Right Angle 
Specifications:
Pin count:4
Pin pitch:0.1"

Example device(s):
CONN_04
</description>
</package3d>
</packages3d>
<symbols>
<symbol name="I2C_STANDARD" urn="urn:adsk.eagle:symbol:37948/1" library_version="1">
<description>&lt;h3&gt;SparkFun I&lt;sup&gt;2&lt;/sup&gt;C Standard Pinout Header&lt;/h3&gt;
&lt;p&gt;SparkFun has standardized on a pinout for all I&lt;sup&gt;2&lt;/sup&gt;C based sensor breakouts.&lt;br&gt;</description>
<wire x1="3.81" y1="-5.08" x2="-5.08" y2="-5.08" width="0.4064" layer="94"/>
<wire x1="1.27" y1="2.54" x2="2.54" y2="2.54" width="0.6096" layer="94"/>
<wire x1="1.27" y1="0" x2="2.54" y2="0" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-2.54" x2="2.54" y2="-2.54" width="0.6096" layer="94"/>
<wire x1="-5.08" y1="7.62" x2="-5.08" y2="-5.08" width="0.4064" layer="94"/>
<wire x1="3.81" y1="-5.08" x2="3.81" y2="7.62" width="0.4064" layer="94"/>
<wire x1="-5.08" y1="7.62" x2="3.81" y2="7.62" width="0.4064" layer="94"/>
<wire x1="1.27" y1="5.08" x2="2.54" y2="5.08" width="0.6096" layer="94"/>
<text x="-5.08" y="-5.334" size="1.778" layer="96" font="vector" align="top-left">&gt;VALUE</text>
<text x="-5.08" y="7.874" size="1.778" layer="95" font="vector">&gt;NAME</text>
<text x="-4.572" y="2.54" size="1.778" layer="94" font="vector" align="center-left">SDA</text>
<text x="-4.572" y="0" size="1.778" layer="94" font="vector" align="center-left">VCC</text>
<text x="-4.572" y="-2.54" size="1.778" layer="94" font="vector" align="center-left">GND</text>
<text x="-4.572" y="5.08" size="1.778" layer="94" font="vector" align="center-left">SCL</text>
<pin name="1" x="7.62" y="-2.54" visible="pad" length="middle" direction="pwr" swaplevel="1" rot="R180"/>
<pin name="2" x="7.62" y="0" visible="pad" length="middle" direction="pwr" swaplevel="1" rot="R180"/>
<pin name="3" x="7.62" y="2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="4" x="7.62" y="5.08" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="I2C_STANDARD" urn="urn:adsk.eagle:component:38325/1" prefix="J" uservalue="yes" library_version="1">
<description>&lt;h3&gt;SparkFun I&lt;sup&gt;2&lt;/sup&gt;C Standard Pinout Header&lt;/h3&gt;
&lt;p&gt;SparkFun has standardized on a pinout for all I&lt;sup&gt;2&lt;/sup&gt;C based sensor breakouts.&lt;br&gt;
&lt;br&gt;
This pinout allows I&lt;sup&gt;2&lt;/sup&gt;C boards to be plugged directly into the headers on Arduino Uno compatible boards, and
to be daisy chained easily.&lt;/p&gt;
&lt;p&gt;&lt;b&gt;Example SparkFun Products:&lt;/b&gt;
&lt;ul&gt;&lt;li&gt;&lt;a href="https://www.sparkfun.com/products/13676"&gt;SparkFun Atmospheric Sensor Breakout - BME280&lt;/a&gt;&lt;/li&gt;
&lt;li&gt;&lt;a href=”https://www.sparkfun.com/products/11084”&gt;SparkFun Altitude/Pressure Sensor Breakout - MPL3115A2&lt;/a&gt;&lt;/li&gt;
&lt;li&gt;&lt;a href=”https://www.sparkfun.com/products/12785”&gt;SparkFun TOF Range Finder Sensor - VL6180&lt;/a&gt;&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;</description>
<gates>
<gate name="G$1" symbol="I2C_STANDARD" x="2.54" y="0"/>
</gates>
<devices>
<device name="" package="1X04">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:38085/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="_NO_SILK" package="1X04_NO_SILK">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:38094/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="QWIIC" package="1X04_1MM_RA">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:38096/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="CONN-13729" constant="no"/>
<attribute name="VALUE" value="Qwiic Right Angle" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="SparkFun-Boards" urn="urn:adsk.eagle:library:509">
<description>&lt;h3&gt;SparkFun Electronics' preferred foot prints&lt;/h3&gt;
This library contains footprints for SparkFun breakout boards, microcontrollers (Arduino, Particle, Teensy, etc.),  breadboards, non-RF modules, etc.
&lt;br&gt;
&lt;br&gt;
We've spent an enormous amount of time creating and checking these footprints and parts, but it is &lt;b&gt; the end user's responsibility&lt;/b&gt; to ensure correctness and suitablity for a given componet or application. 
&lt;br&gt;
&lt;br&gt;If you enjoy using this library, please buy one of our products at &lt;a href=" www.sparkfun.com"&gt;SparkFun.com&lt;/a&gt;.
&lt;br&gt;
&lt;br&gt;
&lt;b&gt;Licensing:&lt;/b&gt; Creative Commons ShareAlike 4.0 International - https://creativecommons.org/licenses/by-sa/4.0/ 
&lt;br&gt;
&lt;br&gt;
You are welcome to use this library for commercial purposes. For attribution, we ask that when you begin to sell your device using our footprint, you email us with a link to the product being sold. We want bragging rights that we helped (in a very small part) to create your 8th world wonder. We would like the opportunity to feature your device on our homepage.</description>
<packages>
<package name="SPARKFUN_ESP8266_THING" urn="urn:adsk.eagle:footprint:37290/1" library_version="1">
<description>&lt;h3&gt;SparkFun Thing Board Footprint&lt;/h3&gt;
&lt;p&gt;Specifications:
&lt;ul&gt;&lt;li&gt;Pin count: 20&lt;/li&gt;
&lt;li&gt;Pin pitch:0.1 inch&lt;/li&gt;
&lt;li&gt;Area: 2.2 x 1.0 inchees&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;
&lt;p&gt;Example device(s):
&lt;ul&gt;&lt;li&gt;SparkFun Thing&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;</description>
<wire x1="-26.67" y1="-12.7" x2="-26.67" y2="0" width="0.127" layer="51"/>
<wire x1="-26.67" y1="0" x2="-26.67" y2="12.7" width="0.127" layer="51"/>
<wire x1="-26.67" y1="12.7" x2="29.21" y2="12.7" width="0.127" layer="51"/>
<wire x1="29.21" y1="12.7" x2="29.21" y2="-12.7" width="0.127" layer="51"/>
<wire x1="29.21" y1="-12.7" x2="-26.67" y2="-12.7" width="0.127" layer="51"/>
<wire x1="-27.94" y1="-10.16" x2="-22.86" y2="-10.16" width="0.127" layer="49"/>
<wire x1="-22.86" y1="-10.16" x2="-22.86" y2="-2.54" width="0.127" layer="49"/>
<wire x1="-22.86" y1="-2.54" x2="-27.94" y2="-2.54" width="0.127" layer="51"/>
<wire x1="-27.94" y1="-2.54" x2="-27.94" y2="-10.16" width="0.127" layer="49"/>
<wire x1="-26.67" y1="0" x2="-20.32" y2="0" width="0.127" layer="49"/>
<wire x1="-20.32" y1="0" x2="-20.32" y2="7.62" width="0.127" layer="49"/>
<wire x1="-20.32" y1="7.62" x2="-27.94" y2="7.62" width="0.127" layer="49"/>
<wire x1="-27.94" y1="7.62" x2="-27.94" y2="0" width="0.127" layer="49"/>
<wire x1="-27.94" y1="0" x2="-26.67" y2="0" width="0.127" layer="49"/>
<wire x1="21.59" y1="12.7" x2="21.59" y2="-12.7" width="0.127" layer="49"/>
<hole x="-15.24" y="-10.16" drill="3.302"/>
<hole x="-15.24" y="10.16" drill="3.302"/>
<hole x="17.78" y="10.16" drill="3.302"/>
<hole x="17.78" y="-10.16" drill="3.302"/>
<pad name="GND@3" x="-10.16" y="11.43" drill="1.016" diameter="1.8796"/>
<pad name="VIN" x="-7.62" y="11.43" drill="1.016" diameter="1.8796"/>
<pad name="5" x="-5.08" y="11.43" drill="1.016" diameter="1.8796"/>
<pad name="0" x="-2.54" y="11.43" drill="1.016" diameter="1.8796"/>
<pad name="4" x="0" y="11.43" drill="1.016" diameter="1.8796"/>
<pad name="13" x="2.54" y="11.43" drill="1.016" diameter="1.8796"/>
<pad name="12" x="5.08" y="11.43" drill="1.016" diameter="1.8796"/>
<pad name="XPD" x="7.62" y="11.43" drill="1.016" diameter="1.8796"/>
<pad name="ADC" x="10.16" y="11.43" drill="1.016" diameter="1.8796"/>
<pad name="EN" x="12.7" y="11.43" drill="1.016" diameter="1.8796"/>
<pad name="GND@1" x="-10.16" y="-11.43" drill="1.016" diameter="1.8796"/>
<pad name="3.3V@1" x="-7.62" y="-11.43" drill="1.016" diameter="1.8796"/>
<pad name="SDA" x="-5.08" y="-11.43" drill="1.016" diameter="1.8796"/>
<pad name="SCL" x="-2.54" y="-11.43" drill="1.016" diameter="1.8796"/>
<pad name="DTR" x="0" y="-11.43" drill="1.016" diameter="1.8796"/>
<pad name="TXO" x="2.54" y="-11.43" drill="1.016" diameter="1.8796"/>
<pad name="RXI" x="5.08" y="-11.43" drill="1.016" diameter="1.8796"/>
<pad name="3.3V@2" x="7.62" y="-11.43" drill="1.016" diameter="1.8796"/>
<pad name="NC" x="10.16" y="-11.43" drill="1.016" diameter="1.8796"/>
<pad name="GND@2" x="12.7" y="-11.43" drill="1.016" diameter="1.8796"/>
<text x="23.495" y="-5.08" size="1.778" layer="49" font="vector" rot="R90">Antenna</text>
<text x="-24.765" y="1.27" size="1.778" layer="49" font="vector" rot="R90">JST</text>
<text x="-24.765" y="-8.89" size="1.778" layer="49" font="vector" rot="R90">USB</text>
<text x="0" y="12.954" size="0.6096" layer="26" font="vector" ratio="20" align="bottom-center">&gt;NAME</text>
<text x="0" y="-12.954" size="0.6096" layer="27" font="vector" ratio="20" align="top-center">&gt;VALUE</text>
<polygon width="0.127" layer="41">
<vertex x="21.59" y="12.7"/>
<vertex x="21.59" y="-12.7"/>
<vertex x="29.21" y="-12.7"/>
<vertex x="29.21" y="12.7"/>
</polygon>
<polygon width="0.127" layer="42">
<vertex x="21.59" y="12.7"/>
<vertex x="21.59" y="-12.7"/>
<vertex x="29.21" y="-12.7"/>
<vertex x="29.21" y="12.7"/>
</polygon>
</package>
</packages>
<packages3d>
<package3d name="SPARKFUN_ESP8266_THING" urn="urn:adsk.eagle:package:37339/1" type="box" library_version="1">
<description>SparkFun Thing Board Footprint
Specifications:
Pin count: 20
Pin pitch:0.1 inch
Area: 2.2 x 1.0 inchees

Example device(s):
SparkFun Thing
</description>
</package3d>
</packages3d>
<symbols>
<symbol name="ESP8266_THING" urn="urn:adsk.eagle:symbol:37289/1" library_version="1">
<description>&lt;h3&gt;SparkFun Thing&lt;/h3&gt;
&lt;p&gt;Basic Breakout for ESP8266 WiFi IC. Includes:
&lt;li&gt;JST Battery connector&lt;/li&gt;
&lt;li&gt;On/off switch&lt;/li&gt;
Does not include connections for the onboard sensor footprints. &lt;/p&gt;</description>
<wire x1="-12.7" y1="-17.78" x2="-12.7" y2="20.32" width="0.254" layer="94"/>
<wire x1="-12.7" y1="20.32" x2="12.7" y2="20.32" width="0.254" layer="94"/>
<wire x1="12.7" y1="20.32" x2="12.7" y2="-17.78" width="0.254" layer="94"/>
<wire x1="12.7" y1="-17.78" x2="-12.7" y2="-17.78" width="0.254" layer="94"/>
<pin name="NC" x="15.24" y="-12.7" visible="pin" length="short" direction="nc" rot="R180"/>
<pin name="DTR" x="-15.24" y="10.16" visible="pin" length="short"/>
<pin name="TXO" x="-15.24" y="7.62" visible="pin" length="short" direction="out"/>
<pin name="RXI" x="-15.24" y="5.08" visible="pin" length="short" direction="in"/>
<pin name="VIN" x="-15.24" y="0" visible="pin" length="short" direction="pwr"/>
<pin name="3.3V@1" x="-15.24" y="-2.54" visible="pin" length="short" direction="pwr"/>
<pin name="3.3V@2" x="-15.24" y="-5.08" visible="pin" length="short" direction="pwr"/>
<pin name="GND@1" x="-15.24" y="-10.16" visible="pin" length="short" direction="pwr"/>
<pin name="GND@2" x="-15.24" y="-12.7" visible="pin" length="short" direction="pwr"/>
<pin name="GND@3" x="-15.24" y="-15.24" visible="pin" length="short" direction="pwr"/>
<pin name="SDA/2" x="-15.24" y="17.78" visible="pin" length="short"/>
<pin name="SCL/14/SCLK" x="-15.24" y="15.24" visible="pin" length="short"/>
<pin name="5" x="15.24" y="17.78" visible="pin" length="short" rot="R180"/>
<pin name="0" x="15.24" y="15.24" visible="pin" length="short" rot="R180"/>
<pin name="4" x="15.24" y="12.7" visible="pin" length="short" rot="R180"/>
<pin name="13/MOSI" x="15.24" y="10.16" visible="pin" length="short" rot="R180"/>
<pin name="12/MISO" x="15.24" y="7.62" visible="pin" length="short" rot="R180"/>
<pin name="XPD/16" x="15.24" y="2.54" visible="pin" length="short" rot="R180"/>
<pin name="ADC/A0" x="15.24" y="-2.54" visible="pin" length="short" rot="R180"/>
<pin name="EN" x="15.24" y="-7.62" visible="pin" length="short" direction="in" rot="R180"/>
<text x="-2.54" y="20.574" size="1.778" layer="95" font="vector">&gt;NAME</text>
<text x="-2.54" y="-18.034" size="1.778" layer="96" font="vector" align="top-left">&gt;VALUE</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="SPARKFUN_ESP8266_THING" urn="urn:adsk.eagle:component:37371/1" prefix="B" library_version="1">
<description>&lt;h3&gt;SparkFun Thing Board&lt;/h3&gt;

&lt;p&gt; The SparkFun ESP8266 Thing is a breakout and development board for the ESP8266 WiFi SoC&lt;/p&gt;

&lt;p&gt;SparkFun Products:
&lt;ul&gt;&lt;li&gt;&lt;a href=”https://www.sparkfun.com/products/13231”&gt;SparkFun ESP8266 Thing&lt;/a&gt;&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;</description>
<gates>
<gate name="G$1" symbol="ESP8266_THING" x="0" y="0"/>
</gates>
<devices>
<device name="" package="SPARKFUN_ESP8266_THING">
<connects>
<connect gate="G$1" pin="0" pad="0"/>
<connect gate="G$1" pin="12/MISO" pad="12"/>
<connect gate="G$1" pin="13/MOSI" pad="13"/>
<connect gate="G$1" pin="3.3V@1" pad="3.3V@1"/>
<connect gate="G$1" pin="3.3V@2" pad="3.3V@2"/>
<connect gate="G$1" pin="4" pad="4"/>
<connect gate="G$1" pin="5" pad="5"/>
<connect gate="G$1" pin="ADC/A0" pad="ADC"/>
<connect gate="G$1" pin="DTR" pad="DTR"/>
<connect gate="G$1" pin="EN" pad="EN"/>
<connect gate="G$1" pin="GND@1" pad="GND@1"/>
<connect gate="G$1" pin="GND@2" pad="GND@2"/>
<connect gate="G$1" pin="GND@3" pad="GND@3"/>
<connect gate="G$1" pin="NC" pad="NC"/>
<connect gate="G$1" pin="RXI" pad="RXI"/>
<connect gate="G$1" pin="SCL/14/SCLK" pad="SCL"/>
<connect gate="G$1" pin="SDA/2" pad="SDA"/>
<connect gate="G$1" pin="TXO" pad="TXO"/>
<connect gate="G$1" pin="VIN" pad="VIN"/>
<connect gate="G$1" pin="XPD/16" pad="XPD"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:37339/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="SF_ID" value="WRL-13231" constant="no"/>
</technology>
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
<clearance class="0" value="0.205"/>
</class>
</classes>
<parts>
<part name="FRAME1" library="frames" library_urn="urn:adsk.eagle:library:229" deviceset="A4L-LOC" device=""/>
<part name="J3" library="SparkFun-Connectors" library_urn="urn:adsk.eagle:library:513" deviceset="I2C_STANDARD" device="" package3d_urn="urn:adsk.eagle:package:38085/1"/>
<part name="J4" library="SparkFun-Connectors" library_urn="urn:adsk.eagle:library:513" deviceset="I2C_STANDARD" device="" package3d_urn="urn:adsk.eagle:package:38085/1"/>
<part name="J5" library="SparkFun-Connectors" library_urn="urn:adsk.eagle:library:513" deviceset="I2C_STANDARD" device="" package3d_urn="urn:adsk.eagle:package:38085/1"/>
<part name="J6" library="SparkFun-Connectors" library_urn="urn:adsk.eagle:library:513" deviceset="I2C_STANDARD" device="" package3d_urn="urn:adsk.eagle:package:38085/1"/>
<part name="J7" library="SparkFun-Connectors" library_urn="urn:adsk.eagle:library:513" deviceset="I2C_STANDARD" device="" package3d_urn="urn:adsk.eagle:package:38085/1"/>
<part name="J8" library="SparkFun-Connectors" library_urn="urn:adsk.eagle:library:513" deviceset="I2C_STANDARD" device="" package3d_urn="urn:adsk.eagle:package:38085/1"/>
<part name="J9" library="SparkFun-Connectors" library_urn="urn:adsk.eagle:library:513" deviceset="I2C_STANDARD" device="" package3d_urn="urn:adsk.eagle:package:38085/1"/>
<part name="J10" library="SparkFun-Connectors" library_urn="urn:adsk.eagle:library:513" deviceset="I2C_STANDARD" device="" package3d_urn="urn:adsk.eagle:package:38085/1"/>
<part name="B1" library="SparkFun-Boards" library_urn="urn:adsk.eagle:library:509" deviceset="SPARKFUN_ESP8266_THING" device="" package3d_urn="urn:adsk.eagle:package:37339/1"/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="FRAME1" gate="G$1" x="-25.4" y="-12.7"/>
<instance part="J3" gate="G$1" x="30.48" y="73.66" rot="R180"/>
<instance part="J4" gate="G$1" x="45.72" y="73.66" rot="R180"/>
<instance part="J5" gate="G$1" x="60.96" y="73.66" rot="R180"/>
<instance part="J6" gate="G$1" x="76.2" y="73.66" rot="R180"/>
<instance part="J7" gate="G$1" x="104.14" y="73.66" rot="R180"/>
<instance part="J8" gate="G$1" x="119.38" y="73.66" rot="R180"/>
<instance part="J9" gate="G$1" x="134.62" y="73.66" rot="R180"/>
<instance part="J10" gate="G$1" x="149.86" y="73.66" rot="R180"/>
<instance part="B1" gate="G$1" x="66.04" y="22.86"/>
</instances>
<busses>
</busses>
<nets>
<net name="GND" class="0">
<segment>
<pinref part="J3" gate="G$1" pin="1"/>
<wire x1="10.16" y1="76.2" x2="22.86" y2="76.2" width="0.1524" layer="91"/>
<pinref part="J4" gate="G$1" pin="1"/>
<wire x1="22.86" y1="76.2" x2="38.1" y2="76.2" width="0.1524" layer="91"/>
<junction x="22.86" y="76.2"/>
<pinref part="J5" gate="G$1" pin="1"/>
<wire x1="38.1" y1="76.2" x2="53.34" y2="76.2" width="0.1524" layer="91"/>
<junction x="38.1" y="76.2"/>
<pinref part="J6" gate="G$1" pin="1"/>
<wire x1="53.34" y1="76.2" x2="68.58" y2="76.2" width="0.1524" layer="91"/>
<junction x="53.34" y="76.2"/>
<pinref part="J7" gate="G$1" pin="1"/>
<wire x1="68.58" y1="76.2" x2="96.52" y2="76.2" width="0.1524" layer="91"/>
<junction x="68.58" y="76.2"/>
<pinref part="J8" gate="G$1" pin="1"/>
<wire x1="96.52" y1="76.2" x2="111.76" y2="76.2" width="0.1524" layer="91"/>
<junction x="96.52" y="76.2"/>
<pinref part="J9" gate="G$1" pin="1"/>
<wire x1="111.76" y1="76.2" x2="127" y2="76.2" width="0.1524" layer="91"/>
<junction x="111.76" y="76.2"/>
<pinref part="J10" gate="G$1" pin="1"/>
<wire x1="127" y1="76.2" x2="142.24" y2="76.2" width="0.1524" layer="91"/>
<junction x="127" y="76.2"/>
<label x="17.78" y="76.2" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="B1" gate="G$1" pin="GND@1"/>
<wire x1="50.8" y1="12.7" x2="43.18" y2="12.7" width="0.1524" layer="91"/>
<label x="45.72" y="12.7" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="B1" gate="G$1" pin="GND@2"/>
<wire x1="50.8" y1="10.16" x2="43.18" y2="10.16" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="B1" gate="G$1" pin="GND@3"/>
<wire x1="50.8" y1="7.62" x2="43.18" y2="7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="VCC" class="0">
<segment>
<pinref part="J3" gate="G$1" pin="2"/>
<wire x1="12.7" y1="73.66" x2="22.86" y2="73.66" width="0.1524" layer="91"/>
<pinref part="J4" gate="G$1" pin="2"/>
<wire x1="22.86" y1="73.66" x2="38.1" y2="73.66" width="0.1524" layer="91"/>
<junction x="22.86" y="73.66"/>
<pinref part="J5" gate="G$1" pin="2"/>
<wire x1="38.1" y1="73.66" x2="53.34" y2="73.66" width="0.1524" layer="91"/>
<junction x="38.1" y="73.66"/>
<pinref part="J6" gate="G$1" pin="2"/>
<wire x1="53.34" y1="73.66" x2="68.58" y2="73.66" width="0.1524" layer="91"/>
<junction x="53.34" y="73.66"/>
<pinref part="J7" gate="G$1" pin="2"/>
<wire x1="68.58" y1="73.66" x2="96.52" y2="73.66" width="0.1524" layer="91"/>
<junction x="68.58" y="73.66"/>
<pinref part="J8" gate="G$1" pin="2"/>
<wire x1="96.52" y1="73.66" x2="111.76" y2="73.66" width="0.1524" layer="91"/>
<junction x="96.52" y="73.66"/>
<pinref part="J9" gate="G$1" pin="2"/>
<wire x1="111.76" y1="73.66" x2="127" y2="73.66" width="0.1524" layer="91"/>
<junction x="111.76" y="73.66"/>
<pinref part="J10" gate="G$1" pin="2"/>
<wire x1="127" y1="73.66" x2="142.24" y2="73.66" width="0.1524" layer="91"/>
<junction x="127" y="73.66"/>
<label x="17.78" y="73.66" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="B1" gate="G$1" pin="3.3V@1"/>
<wire x1="50.8" y1="20.32" x2="43.18" y2="20.32" width="0.1524" layer="91"/>
<label x="45.72" y="20.32" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="B1" gate="G$1" pin="3.3V@2"/>
<wire x1="50.8" y1="17.78" x2="43.18" y2="17.78" width="0.1524" layer="91"/>
</segment>
</net>
<net name="SDA1" class="0">
<segment>
<pinref part="J3" gate="G$1" pin="3"/>
<pinref part="J4" gate="G$1" pin="3"/>
<wire x1="22.86" y1="71.12" x2="38.1" y2="71.12" width="0.1524" layer="91"/>
<pinref part="J5" gate="G$1" pin="3"/>
<wire x1="38.1" y1="71.12" x2="53.34" y2="71.12" width="0.1524" layer="91"/>
<junction x="38.1" y="71.12"/>
<pinref part="J6" gate="G$1" pin="3"/>
<wire x1="53.34" y1="71.12" x2="68.58" y2="71.12" width="0.1524" layer="91"/>
<junction x="53.34" y="71.12"/>
<label x="17.78" y="71.12" size="1.778" layer="95"/>
<wire x1="22.86" y1="71.12" x2="15.24" y2="71.12" width="0.1524" layer="91"/>
<junction x="22.86" y="71.12"/>
</segment>
<segment>
<pinref part="B1" gate="G$1" pin="SDA/2"/>
<wire x1="50.8" y1="40.64" x2="43.18" y2="40.64" width="0.1524" layer="91"/>
<label x="45.72" y="40.64" size="1.778" layer="95"/>
</segment>
</net>
<net name="SCL1" class="0">
<segment>
<pinref part="J3" gate="G$1" pin="4"/>
<pinref part="J4" gate="G$1" pin="4"/>
<wire x1="22.86" y1="68.58" x2="38.1" y2="68.58" width="0.1524" layer="91"/>
<pinref part="J5" gate="G$1" pin="4"/>
<wire x1="38.1" y1="68.58" x2="53.34" y2="68.58" width="0.1524" layer="91"/>
<junction x="38.1" y="68.58"/>
<pinref part="J6" gate="G$1" pin="4"/>
<wire x1="53.34" y1="68.58" x2="68.58" y2="68.58" width="0.1524" layer="91"/>
<junction x="53.34" y="68.58"/>
<label x="17.78" y="68.58" size="1.778" layer="95"/>
<wire x1="22.86" y1="68.58" x2="17.78" y2="68.58" width="0.1524" layer="91"/>
<junction x="22.86" y="68.58"/>
</segment>
<segment>
<pinref part="B1" gate="G$1" pin="SCL/14/SCLK"/>
<wire x1="50.8" y1="38.1" x2="43.18" y2="38.1" width="0.1524" layer="91"/>
<label x="45.72" y="38.1" size="1.778" layer="95"/>
</segment>
</net>
<net name="SDA2" class="0">
<segment>
<pinref part="J8" gate="G$1" pin="3"/>
<pinref part="J9" gate="G$1" pin="3"/>
<wire x1="111.76" y1="71.12" x2="127" y2="71.12" width="0.1524" layer="91"/>
<junction x="111.76" y="71.12"/>
<pinref part="J10" gate="G$1" pin="3"/>
<wire x1="127" y1="71.12" x2="142.24" y2="71.12" width="0.1524" layer="91"/>
<junction x="127" y="71.12"/>
<label x="91.44" y="71.12" size="1.778" layer="95"/>
<pinref part="J7" gate="G$1" pin="3"/>
<wire x1="96.52" y1="71.12" x2="88.9" y2="71.12" width="0.1524" layer="91"/>
<wire x1="111.76" y1="71.12" x2="96.52" y2="71.12" width="0.1524" layer="91"/>
<junction x="96.52" y="71.12"/>
</segment>
<segment>
<pinref part="B1" gate="G$1" pin="4"/>
<wire x1="81.28" y1="35.56" x2="88.9" y2="35.56" width="0.1524" layer="91"/>
<label x="81.28" y="35.56" size="1.778" layer="95"/>
</segment>
</net>
<net name="SCL2" class="0">
<segment>
<pinref part="J8" gate="G$1" pin="4"/>
<pinref part="J9" gate="G$1" pin="4"/>
<wire x1="111.76" y1="68.58" x2="127" y2="68.58" width="0.1524" layer="91"/>
<junction x="111.76" y="68.58"/>
<pinref part="J10" gate="G$1" pin="4"/>
<wire x1="127" y1="68.58" x2="142.24" y2="68.58" width="0.1524" layer="91"/>
<junction x="127" y="68.58"/>
<label x="91.44" y="68.58" size="1.778" layer="95"/>
<pinref part="J7" gate="G$1" pin="4"/>
<wire x1="96.52" y1="68.58" x2="91.44" y2="68.58" width="0.1524" layer="91"/>
<wire x1="111.76" y1="68.58" x2="96.52" y2="68.58" width="0.1524" layer="91"/>
<junction x="96.52" y="68.58"/>
</segment>
<segment>
<pinref part="B1" gate="G$1" pin="0"/>
<wire x1="81.28" y1="38.1" x2="88.9" y2="38.1" width="0.1524" layer="91"/>
<label x="81.28" y="38.1" size="1.778" layer="95"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
<errors>
<approved hash="204,1,76.2,15.24,B1,3.3V,,,,"/>
</errors>
</schematic>
</drawing>
<compatibility>
<note version="8.2" severity="warning">
Since Version 8.2, EAGLE supports online libraries. The ids
of those online libraries will not be understood (or retained)
with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports URNs for individual library
assets (packages, symbols, and devices). The URNs of those assets
will not be understood (or retained) with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports the association of 3D packages
with devices in libraries, schematics, and board files. Those 3D
packages will not be understood (or retained) with this version.
</note>
</compatibility>
</eagle>
