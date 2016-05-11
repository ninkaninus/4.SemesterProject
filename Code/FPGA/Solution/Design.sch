<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_72" />
        <signal name="XLXN_73(11:0)" />
        <signal name="XLXN_106(11:0)" />
        <signal name="XLXN_107(11:0)" />
        <signal name="XLXN_108(11:0)" />
        <signal name="XLXN_109(11:0)" />
        <signal name="XLXN_110(11:0)" />
        <signal name="XLXN_111(11:0)" />
        <signal name="XLXN_112(11:0)" />
        <signal name="SPI_MOSI" />
        <signal name="SPI_MISO" />
        <signal name="SPI_SS" />
        <signal name="SPI_Clk" />
        <signal name="XLXN_123(11:0)" />
        <signal name="XLXN_113(11:0)" />
        <signal name="Clk" />
        <signal name="XLXN_138(11:0)" />
        <signal name="XLXN_139(11:0)" />
        <signal name="XLXN_141(11:0)" />
        <signal name="XLXN_142(11:0)" />
        <signal name="XLXN_143(11:0)" />
        <signal name="XLXN_144(11:0)" />
        <signal name="XLXN_145(11:0)" />
        <signal name="XLXN_146(11:0)" />
        <signal name="XLXN_147(11:0)" />
        <signal name="XLXN_148(11:0)" />
        <signal name="XLXN_149(11:0)" />
        <signal name="XLXN_150(11:0)" />
        <signal name="Motor1PanTicks(11:0)" />
        <signal name="XLXN_161" />
        <signal name="XLXN_162" />
        <signal name="XLXN_163" />
        <signal name="XLXN_157(15:0)" />
        <signal name="XLXN_158(15:0)" />
        <signal name="ToggleDisplay" />
        <signal name="XLXN_170(15:0)" />
        <signal name="Enable(3:0)" />
        <signal name="seg(0:7)" />
        <signal name="XLXN_178(11:0)" />
        <signal name="XLXN_179(11:0)" />
        <signal name="XLXN_182(11:0)" />
        <signal name="XLXN_183(11:0)" />
        <signal name="XLXN_184(11:0)" />
        <signal name="Motor2TiltTicks(11:0)" />
        <signal name="WE" />
        <signal name="Motor2HallA" />
        <signal name="Motor2HallB" />
        <signal name="DataBusFromSlave(11:0)" />
        <signal name="XLXN_317" />
        <signal name="XLXN_339(11:0)" />
        <signal name="Motor1HallA" />
        <signal name="Motor1HallB" />
        <signal name="XLXN_345(11:0)" />
        <signal name="XLXN_318" />
        <signal name="HallIndex1Tilt" />
        <signal name="Motor2TiltE" />
        <signal name="XLXN_396" />
        <signal name="XLXN_397" />
        <signal name="HallIndex0Pan" />
        <signal name="Motor1PanE" />
        <signal name="Motor1PanZero" />
        <signal name="XLXN_420" />
        <signal name="XLXN_421" />
        <signal name="XLXN_427" />
        <signal name="XLXN_428(1:0)" />
        <signal name="XLXN_429(1:0)" />
        <signal name="XLXN_430" />
        <signal name="XLXN_439" />
        <signal name="Motor1Pan(1:0)" />
        <signal name="Motor2Tilt(1:0)" />
        <signal name="AdrBus(3:0)" />
        <signal name="MotLed1(1:0)" />
        <signal name="XLXN_450" />
        <signal name="MotLed2(1:0)" />
        <signal name="XLXN_452" />
        <signal name="Motor2TiltZero" />
        <port polarity="Input" name="SPI_MOSI" />
        <port polarity="Output" name="SPI_MISO" />
        <port polarity="Input" name="SPI_SS" />
        <port polarity="Input" name="SPI_Clk" />
        <port polarity="Input" name="Clk" />
        <port polarity="Input" name="ToggleDisplay" />
        <port polarity="Output" name="Enable(3:0)" />
        <port polarity="Output" name="seg(0:7)" />
        <port polarity="Input" name="Motor2HallA" />
        <port polarity="Input" name="Motor2HallB" />
        <port polarity="Input" name="Motor1HallA" />
        <port polarity="Input" name="Motor1HallB" />
        <port polarity="Input" name="HallIndex1Tilt" />
        <port polarity="Output" name="Motor2TiltE" />
        <port polarity="Input" name="HallIndex0Pan" />
        <port polarity="Output" name="Motor1PanE" />
        <port polarity="Input" name="Motor1PanZero" />
        <port polarity="Output" name="Motor1Pan(1:0)" />
        <port polarity="Output" name="Motor2Tilt(1:0)" />
        <port polarity="Output" name="MotLed1(1:0)" />
        <port polarity="Output" name="MotLed2(1:0)" />
        <port polarity="Input" name="Motor2TiltZero" />
        <blockdef name="SPI_Slave3">
            <timestamp>2016-4-28T9:33:44</timestamp>
            <rect width="64" x="320" y="84" height="24" />
            <line x2="384" y1="96" y2="96" x1="320" />
            <line x2="384" y1="32" y2="32" x1="320" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="256" x="64" y="-256" height="384" />
            <line x2="0" y1="64" y2="64" x1="64" />
            <rect width="64" x="0" y="52" height="24" />
        </blockdef>
        <blockdef name="Mux16x12_4">
            <timestamp>2016-4-28T10:18:6</timestamp>
            <rect width="64" x="320" y="20" height="24" />
            <line x2="384" y1="32" y2="32" x1="320" />
            <rect width="64" x="0" y="-1068" height="24" />
            <line x2="0" y1="-1056" y2="-1056" x1="64" />
            <rect width="64" x="0" y="-1004" height="24" />
            <line x2="0" y1="-992" y2="-992" x1="64" />
            <rect width="64" x="0" y="-940" height="24" />
            <line x2="0" y1="-928" y2="-928" x1="64" />
            <rect width="64" x="0" y="-876" height="24" />
            <line x2="0" y1="-864" y2="-864" x1="64" />
            <rect width="64" x="0" y="-812" height="24" />
            <line x2="0" y1="-800" y2="-800" x1="64" />
            <rect width="64" x="0" y="-748" height="24" />
            <line x2="0" y1="-736" y2="-736" x1="64" />
            <rect width="64" x="0" y="-684" height="24" />
            <line x2="0" y1="-672" y2="-672" x1="64" />
            <rect width="64" x="0" y="-620" height="24" />
            <line x2="0" y1="-608" y2="-608" x1="64" />
            <rect width="64" x="0" y="-556" height="24" />
            <line x2="0" y1="-544" y2="-544" x1="64" />
            <rect width="64" x="0" y="-492" height="24" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <rect width="64" x="0" y="-428" height="24" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <rect width="64" x="0" y="-364" height="24" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="256" x="64" y="-1088" height="1152" />
        </blockdef>
        <blockdef name="constant">
            <timestamp>2006-1-1T10:10:10</timestamp>
            <rect width="112" x="0" y="0" height="64" />
            <line x2="112" y1="32" y2="32" x1="144" />
        </blockdef>
        <blockdef name="MotorController">
            <timestamp>2016-5-2T15:8:34</timestamp>
            <rect width="64" x="496" y="20" height="24" />
            <line x2="560" y1="32" y2="32" x1="496" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="560" y1="-480" y2="-480" x1="496" />
            <line x2="560" y1="-256" y2="-256" x1="496" />
            <rect width="64" x="496" y="-44" height="24" />
            <line x2="560" y1="-32" y2="-32" x1="496" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="432" x="64" y="-512" height="576" />
        </blockdef>
        <blockdef name="MultiplexDisplay">
            <timestamp>2016-5-1T13:54:37</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="NumberToBcd">
            <timestamp>2016-5-1T13:54:37</timestamp>
            <rect width="304" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="368" y="-108" height="24" />
            <line x2="432" y1="-96" y2="-96" x1="368" />
        </blockdef>
        <blockdef name="PositionsModul">
            <timestamp>2016-5-2T14:43:23</timestamp>
            <line x2="0" y1="800" y2="800" x1="64" />
            <line x2="0" y1="288" y2="288" x1="64" />
            <line x2="0" y1="352" y2="352" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="384" y1="176" y2="176" x1="320" />
            <rect width="64" x="320" y="164" height="24" />
            <rect width="256" x="64" y="-192" height="1024" />
        </blockdef>
        <blockdef name="Mux2x16_1">
            <timestamp>2016-5-2T11:12:50</timestamp>
            <rect width="288" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="352" y="-172" height="24" />
            <line x2="416" y1="-160" y2="-160" x1="352" />
        </blockdef>
        <blockdef name="Toggle_Button3">
            <timestamp>2016-5-2T11:42:29</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="SPI_Slave3" name="SPI_Slave">
            <blockpin signalname="Clk" name="Clk" />
            <blockpin signalname="SPI_Clk" name="SClk" />
            <blockpin signalname="SPI_SS" name="SS" />
            <blockpin signalname="SPI_MOSI" name="MOSI" />
            <blockpin signalname="SPI_MISO" name="MISO" />
            <blockpin signalname="WE" name="WE" />
            <blockpin signalname="AdrBus(3:0)" name="AdrBus(3:0)" />
            <blockpin signalname="DataBusFromSlave(11:0)" name="DataBusFromSlave(11:0)" />
            <blockpin signalname="XLXN_123(11:0)" name="DataBusToSlave(11:0)" />
        </block>
        <block symbolname="constant" name="XLXI_34">
            <attr value="0000" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_142(11:0)" name="O" />
        </block>
        <block symbolname="Mux16x12_4" name="DataToSlave">
            <blockpin signalname="XLXN_142(11:0)" name="input0(11:0)" />
            <blockpin signalname="XLXN_142(11:0)" name="input1(11:0)" />
            <blockpin signalname="Motor1PanTicks(11:0)" name="input2(11:0)" />
            <blockpin signalname="XLXN_142(11:0)" name="input3(11:0)" />
            <blockpin signalname="Motor2TiltTicks(11:0)" name="input4(11:0)" />
            <blockpin signalname="XLXN_142(11:0)" name="input5(11:0)" />
            <blockpin signalname="XLXN_142(11:0)" name="input6(11:0)" />
            <blockpin signalname="XLXN_142(11:0)" name="input7(11:0)" />
            <blockpin signalname="XLXN_142(11:0)" name="input8(11:0)" />
            <blockpin signalname="XLXN_142(11:0)" name="input9(11:0)" />
            <blockpin signalname="XLXN_142(11:0)" name="input10(11:0)" />
            <blockpin signalname="XLXN_142(11:0)" name="input11(11:0)" />
            <blockpin signalname="XLXN_142(11:0)" name="input12(11:0)" />
            <blockpin signalname="XLXN_142(11:0)" name="input13(11:0)" />
            <blockpin signalname="XLXN_142(11:0)" name="input14(11:0)" />
            <blockpin signalname="XLXN_142(11:0)" name="input15(11:0)" />
            <blockpin signalname="AdrBus(3:0)" name="sel(3:0)" />
            <blockpin signalname="XLXN_123(11:0)" name="dataOut(11:0)" />
        </block>
        <block symbolname="MultiplexDisplay" name="DisplayMultiplexer">
            <blockpin signalname="Clk" name="Clk_50MHz" />
            <blockpin signalname="XLXN_170(15:0)" name="Bcd(15:0)" />
            <blockpin signalname="seg(0:7)" name="Seg(1:8)" />
            <blockpin signalname="Enable(3:0)" name="An(3:0)" />
        </block>
        <block symbolname="Mux2x16_1" name="DisplayMux">
            <blockpin signalname="ToggleDisplay" name="Sel" />
            <blockpin signalname="XLXN_157(15:0)" name="Input0(15:0)" />
            <blockpin signalname="XLXN_158(15:0)" name="Input1(15:0)" />
            <blockpin signalname="XLXN_170(15:0)" name="DataOut(15:0)" />
        </block>
        <block symbolname="NumberToBcd" name="TicksMotor2Tilt">
            <blockpin signalname="Clk" name="Clk" />
            <blockpin signalname="Motor2TiltTicks(11:0)" name="Number(11:0)" />
            <blockpin signalname="XLXN_158(15:0)" name="BcdOut(15:0)" />
        </block>
        <block symbolname="NumberToBcd" name="TicksMotor1Pan">
            <blockpin signalname="Clk" name="Clk" />
            <blockpin signalname="Motor1PanTicks(11:0)" name="Number(11:0)" />
            <blockpin signalname="XLXN_157(15:0)" name="BcdOut(15:0)" />
        </block>
        <block symbolname="PositionsModul" name="PositionMotor2Tilt">
            <attr value="4" name="Address">
                <trait vhdl="all:0 gm:1" />
                <trait valuetype="Integer" />
            </attr>
            <blockpin signalname="Clk" name="Clk" />
            <blockpin signalname="Motor2HallA" name="HallA" />
            <blockpin signalname="Motor2HallB" name="HallB" />
            <blockpin signalname="Motor2TiltTicks(11:0)" name="DataBusToSlave(11:0)" />
            <blockpin signalname="HallIndex1Tilt" name="HallIndex" />
        </block>
        <block symbolname="PositionsModul" name="PositionMotor1Pan">
            <attr value="2" name="Address">
                <trait vhdl="all:0 gm:1" />
                <trait valuetype="Integer" />
            </attr>
            <blockpin signalname="Clk" name="Clk" />
            <blockpin signalname="Motor1HallA" name="HallA" />
            <blockpin signalname="Motor1HallB" name="HallB" />
            <blockpin signalname="Motor1PanTicks(11:0)" name="DataBusToSlave(11:0)" />
            <blockpin signalname="HallIndex0Pan" name="HallIndex" />
        </block>
        <block symbolname="MotorController" name="MotorController2Tilt">
            <attr value="2000" name="Boundary_Min">
                <trait vhdl="all:0 gm:1" />
                <trait valuetype="Integer" />
            </attr>
            <attr value="2650" name="Boundary_Max">
                <trait vhdl="all:0 gm:1" />
                <trait valuetype="Integer" />
            </attr>
            <attr value="3" name="Address">
                <trait vhdl="all:0 gm:1" />
                <trait valuetype="Integer" />
            </attr>
            <blockpin signalname="Clk" name="Clk" />
            <blockpin signalname="WE" name="WE" />
            <blockpin signalname="HallIndex1Tilt" name="HallIndex" />
            <blockpin signalname="XLXN_397" name="ButtonPress" />
            <blockpin signalname="XLXN_396" name="ButtonToggle" />
            <blockpin signalname="Motor2TiltTicks(11:0)" name="Motor_Ticks(11:0)" />
            <blockpin signalname="DataBusFromSlave(11:0)" name="DataBusFromSlave(11:0)" />
            <blockpin signalname="AdrBus(3:0)" name="AdrBus(3:0)" />
            <blockpin signalname="Motor2TiltE" name="MotorEnable" />
            <blockpin name="Zeroed" />
            <blockpin signalname="Motor2Tilt(1:0)" name="MotorPins(1:0)" />
            <blockpin signalname="MotLed2(1:0)" name="StateOutput(1:0)" />
        </block>
        <block symbolname="MotorController" name="MotorController1Pan">
            <attr value="1" name="Address">
                <trait vhdl="all:0 gm:1" />
                <trait valuetype="Integer" />
            </attr>
            <attr value="2000" name="Boundary_Min">
                <trait vhdl="all:0 gm:1" />
                <trait valuetype="Integer" />
            </attr>
            <attr value="2100" name="Boundary_Max">
                <trait vhdl="all:0 gm:1" />
                <trait valuetype="Integer" />
            </attr>
            <blockpin signalname="Clk" name="Clk" />
            <blockpin signalname="WE" name="WE" />
            <blockpin signalname="HallIndex0Pan" name="HallIndex" />
            <blockpin signalname="XLXN_420" name="ButtonPress" />
            <blockpin signalname="XLXN_421" name="ButtonToggle" />
            <blockpin signalname="Motor1PanTicks(11:0)" name="Motor_Ticks(11:0)" />
            <blockpin signalname="DataBusFromSlave(11:0)" name="DataBusFromSlave(11:0)" />
            <blockpin signalname="AdrBus(3:0)" name="AdrBus(3:0)" />
            <blockpin signalname="Motor1PanE" name="MotorEnable" />
            <blockpin name="Zeroed" />
            <blockpin signalname="Motor1Pan(1:0)" name="MotorPins(1:0)" />
            <blockpin signalname="MotLed1(1:0)" name="StateOutput(1:0)" />
        </block>
        <block symbolname="Toggle_Button3" name="Motor1PanZeroButton">
            <blockpin signalname="Clk" name="Clk" />
            <blockpin signalname="Motor1PanZero" name="Button" />
            <blockpin signalname="XLXN_421" name="Toggle" />
            <blockpin signalname="XLXN_420" name="Deboun" />
            <blockpin name="Pulse" />
        </block>
        <block symbolname="Toggle_Button3" name="Motor2TiltZeroButton">
            <blockpin signalname="Clk" name="Clk" />
            <blockpin signalname="Motor2TiltZero" name="Button" />
            <blockpin signalname="XLXN_396" name="Toggle" />
            <blockpin signalname="XLXN_397" name="Deboun" />
            <blockpin name="Pulse" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="5440" height="3520">
        <branch name="SPI_MOSI">
            <wire x2="2912" y1="368" y2="368" x1="2896" />
        </branch>
        <branch name="SPI_MISO">
            <wire x2="3328" y1="176" y2="176" x1="3296" />
        </branch>
        <branch name="SPI_SS">
            <wire x2="2912" y1="304" y2="304" x1="2864" />
        </branch>
        <branch name="SPI_Clk">
            <wire x2="2912" y1="240" y2="240" x1="2864" />
        </branch>
        <instance x="2912" y="400" name="SPI_Slave" orien="R0">
        </instance>
        <branch name="XLXN_123(11:0)">
            <wire x2="2800" y1="1264" y2="1264" x1="2720" />
            <wire x2="2800" y1="464" y2="1264" x1="2800" />
            <wire x2="2912" y1="464" y2="464" x1="2800" />
        </branch>
        <instance x="2336" y="1232" name="DataToSlave" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="112" y="-1168" type="instance" />
        </instance>
        <iomarker fontsize="28" x="2896" y="368" name="SPI_MOSI" orien="R180" />
        <iomarker fontsize="28" x="2864" y="304" name="SPI_SS" orien="R180" />
        <iomarker fontsize="28" x="2864" y="240" name="SPI_Clk" orien="R180" />
        <iomarker fontsize="28" x="3328" y="176" name="SPI_MISO" orien="R0" />
        <instance x="2144" y="144" name="XLXI_34" orien="R0">
        </instance>
        <branch name="Clk">
            <wire x2="2912" y1="176" y2="176" x1="2800" />
        </branch>
        <branch name="XLXN_142(11:0)">
            <wire x2="2320" y1="176" y2="176" x1="2288" />
            <wire x2="2336" y1="176" y2="176" x1="2320" />
            <wire x2="2320" y1="176" y2="240" x1="2320" />
            <wire x2="2336" y1="240" y2="240" x1="2320" />
            <wire x2="2320" y1="240" y2="240" x1="2304" />
            <wire x2="2304" y1="240" y2="368" x1="2304" />
            <wire x2="2304" y1="368" y2="496" x1="2304" />
            <wire x2="2320" y1="496" y2="496" x1="2304" />
            <wire x2="2336" y1="496" y2="496" x1="2320" />
            <wire x2="2320" y1="496" y2="560" x1="2320" />
            <wire x2="2336" y1="560" y2="560" x1="2320" />
            <wire x2="2320" y1="560" y2="624" x1="2320" />
            <wire x2="2336" y1="624" y2="624" x1="2320" />
            <wire x2="2320" y1="624" y2="688" x1="2320" />
            <wire x2="2336" y1="688" y2="688" x1="2320" />
            <wire x2="2320" y1="688" y2="752" x1="2320" />
            <wire x2="2320" y1="752" y2="816" x1="2320" />
            <wire x2="2320" y1="816" y2="880" x1="2320" />
            <wire x2="2320" y1="880" y2="944" x1="2320" />
            <wire x2="2320" y1="944" y2="1008" x1="2320" />
            <wire x2="2320" y1="1008" y2="1072" x1="2320" />
            <wire x2="2320" y1="1072" y2="1136" x1="2320" />
            <wire x2="2336" y1="1136" y2="1136" x1="2320" />
            <wire x2="2336" y1="1072" y2="1072" x1="2320" />
            <wire x2="2336" y1="1008" y2="1008" x1="2320" />
            <wire x2="2336" y1="944" y2="944" x1="2320" />
            <wire x2="2336" y1="880" y2="880" x1="2320" />
            <wire x2="2336" y1="816" y2="816" x1="2320" />
            <wire x2="2336" y1="752" y2="752" x1="2320" />
            <wire x2="2336" y1="368" y2="368" x1="2304" />
        </branch>
        <branch name="XLXN_157(15:0)">
            <wire x2="2336" y1="2032" y2="2032" x1="2304" />
        </branch>
        <branch name="XLXN_158(15:0)">
            <wire x2="2320" y1="2272" y2="2272" x1="2304" />
            <wire x2="2320" y1="2096" y2="2272" x1="2320" />
            <wire x2="2336" y1="2096" y2="2096" x1="2320" />
        </branch>
        <branch name="ToggleDisplay">
            <wire x2="2336" y1="1872" y2="1872" x1="2176" />
            <wire x2="2336" y1="1872" y2="1968" x1="2336" />
        </branch>
        <instance x="2336" y="2128" name="DisplayMux" orien="R0">
        </instance>
        <instance x="1872" y="2368" name="TicksMotor2Tilt" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="144" y="-208" type="instance" />
        </instance>
        <instance x="1872" y="2128" name="TicksMotor1Pan" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="128" y="-208" type="instance" />
        </instance>
        <iomarker fontsize="28" x="2176" y="1872" name="ToggleDisplay" orien="R180" />
        <branch name="XLXN_170(15:0)">
            <wire x2="2832" y1="1968" y2="1968" x1="2752" />
        </branch>
        <instance x="2832" y="2000" name="DisplayMultiplexer" orien="R0">
        </instance>
        <branch name="Clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2800" y="1904" type="branch" />
            <wire x2="2832" y1="1904" y2="1904" x1="2800" />
        </branch>
        <branch name="Enable(3:0)">
            <wire x2="3248" y1="1968" y2="1968" x1="3216" />
        </branch>
        <iomarker fontsize="28" x="3248" y="1968" name="Enable(3:0)" orien="R0" />
        <branch name="seg(0:7)">
            <wire x2="3248" y1="1904" y2="1904" x1="3216" />
        </branch>
        <iomarker fontsize="28" x="3248" y="1904" name="seg(0:7)" orien="R0" />
        <branch name="Clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1856" y="2032" type="branch" />
            <wire x2="1872" y1="2032" y2="2032" x1="1856" />
        </branch>
        <branch name="Clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1856" y="2272" type="branch" />
            <wire x2="1872" y1="2272" y2="2272" x1="1856" />
        </branch>
        <branch name="Motor2TiltTicks(11:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1584" y="2496" type="branch" />
            <wire x2="1584" y1="2496" y2="2496" x1="1472" />
            <wire x2="1760" y1="2496" y2="2496" x1="1584" />
            <wire x2="1760" y1="1824" y2="2336" x1="1760" />
            <wire x2="1872" y1="2336" y2="2336" x1="1760" />
            <wire x2="1760" y1="2336" y2="2496" x1="1760" />
            <wire x2="2240" y1="1824" y2="1824" x1="1760" />
            <wire x2="2336" y1="432" y2="432" x1="2240" />
            <wire x2="2240" y1="432" y2="1824" x1="2240" />
        </branch>
        <branch name="Motor1PanTicks(11:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1584" y="1984" type="branch" />
            <wire x2="832" y1="2496" y2="2496" x1="784" />
            <wire x2="832" y1="1984" y2="2496" x1="832" />
            <wire x2="1584" y1="1984" y2="1984" x1="832" />
            <wire x2="1696" y1="1984" y2="1984" x1="1584" />
            <wire x2="1696" y1="1984" y2="2096" x1="1696" />
            <wire x2="1872" y1="2096" y2="2096" x1="1696" />
            <wire x2="2176" y1="1760" y2="1760" x1="1696" />
            <wire x2="1696" y1="1760" y2="1984" x1="1696" />
            <wire x2="2336" y1="304" y2="304" x1="2176" />
            <wire x2="2176" y1="304" y2="1760" x1="2176" />
        </branch>
        <instance x="1088" y="2320" name="PositionMotor2Tilt" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="96" y="-272" type="instance" />
            <attrtext style="fontsize:28;fontname:Arial;displayformat:NAMEEQUALSVALUE" attrname="Address" x="112" y="-80" type="instance" />
        </instance>
        <branch name="Clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1056" y="2160" type="branch" />
            <wire x2="1088" y1="2160" y2="2160" x1="1056" />
        </branch>
        <branch name="Motor2HallA">
            <wire x2="1088" y1="2608" y2="2608" x1="1056" />
        </branch>
        <branch name="Motor2HallB">
            <wire x2="1088" y1="2672" y2="2672" x1="1056" />
        </branch>
        <iomarker fontsize="28" x="1056" y="2608" name="Motor2HallA" orien="R180" />
        <iomarker fontsize="28" x="1056" y="2672" name="Motor2HallB" orien="R180" />
        <branch name="WE">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3344" y="432" type="branch" />
            <wire x2="3344" y1="432" y2="432" x1="3296" />
        </branch>
        <branch name="DataBusFromSlave(11:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3232" y="576" type="branch" />
            <wire x2="3344" y1="576" y2="576" x1="3232" />
            <wire x2="3344" y1="496" y2="496" x1="3296" />
            <wire x2="3344" y1="496" y2="576" x1="3344" />
        </branch>
        <instance x="400" y="2320" name="PositionMotor1Pan" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="96" y="-272" type="instance" />
            <attrtext style="fontsize:28;fontname:Arial;displayformat:NAMEEQUALSVALUE" attrname="Address" x="112" y="-80" type="instance" />
        </instance>
        <branch name="Clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="368" y="2160" type="branch" />
            <wire x2="400" y1="2160" y2="2160" x1="368" />
        </branch>
        <branch name="Motor1HallA">
            <wire x2="400" y1="2608" y2="2608" x1="368" />
        </branch>
        <branch name="Motor1HallB">
            <wire x2="400" y1="2672" y2="2672" x1="368" />
        </branch>
        <iomarker fontsize="28" x="368" y="2608" name="Motor1HallA" orien="R180" />
        <iomarker fontsize="28" x="368" y="2672" name="Motor1HallB" orien="R180" />
        <instance x="368" y="1568" name="MotorController2Tilt" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="176" y="-592" type="instance" />
            <attrtext style="fontsize:28;fontname:Arial;displayformat:NAMEEQUALSVALUE" attrname="Address" x="288" y="-368" type="instance" />
            <attrtext style="fontsize:28;fontname:Arial;displayformat:NAMEEQUALSVALUE" attrname="Boundary_Min" x="0" y="64" type="instance" />
            <attrtext style="fontsize:28;fontname:Arial;displayformat:NAMEEQUALSVALUE" attrname="Boundary_Max" x="0" y="96" type="instance" />
        </instance>
        <branch name="Clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="304" y="1088" type="branch" />
            <wire x2="368" y1="1088" y2="1088" x1="304" />
        </branch>
        <branch name="WE">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="304" y="1152" type="branch" />
            <wire x2="368" y1="1152" y2="1152" x1="304" />
        </branch>
        <branch name="Motor2TiltTicks(11:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="304" y="1408" type="branch" />
            <wire x2="368" y1="1408" y2="1408" x1="304" />
        </branch>
        <branch name="DataBusFromSlave(11:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="304" y="1472" type="branch" />
            <wire x2="368" y1="1472" y2="1472" x1="304" />
        </branch>
        <branch name="HallIndex1Tilt">
            <wire x2="352" y1="1216" y2="1216" x1="224" />
            <wire x2="368" y1="1216" y2="1216" x1="352" />
        </branch>
        <branch name="Motor2TiltE">
            <wire x2="1040" y1="1088" y2="1088" x1="928" />
        </branch>
        <branch name="XLXN_396">
            <wire x2="352" y1="1024" y2="1280" x1="352" />
            <wire x2="368" y1="1280" y2="1280" x1="352" />
            <wire x2="944" y1="1024" y2="1024" x1="352" />
            <wire x2="944" y1="1024" y2="1824" x1="944" />
            <wire x2="944" y1="1824" y2="1824" x1="704" />
        </branch>
        <branch name="XLXN_397">
            <wire x2="368" y1="1344" y2="1344" x1="352" />
            <wire x2="352" y1="1344" y2="1712" x1="352" />
            <wire x2="768" y1="1712" y2="1712" x1="352" />
            <wire x2="768" y1="1712" y2="1888" x1="768" />
            <wire x2="768" y1="1888" y2="1888" x1="704" />
        </branch>
        <instance x="368" y="944" name="MotorController1Pan" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="176" y="-592" type="instance" />
            <attrtext style="fontsize:28;fontname:Arial;displayformat:NAMEEQUALSVALUE" attrname="Address" x="304" y="-368" type="instance" />
            <attrtext style="fontsize:28;fontname:Arial;displayformat:NAMEEQUALSVALUE" attrname="Boundary_Min" x="0" y="64" type="instance" />
            <attrtext style="fontsize:28;fontname:Arial;displayformat:NAMEEQUALSVALUE" attrname="Boundary_Max" x="0" y="96" type="instance" />
        </instance>
        <branch name="Clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="304" y="464" type="branch" />
            <wire x2="368" y1="464" y2="464" x1="304" />
        </branch>
        <branch name="WE">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="304" y="528" type="branch" />
            <wire x2="368" y1="528" y2="528" x1="304" />
        </branch>
        <branch name="Motor1PanTicks(11:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="304" y="784" type="branch" />
            <wire x2="368" y1="784" y2="784" x1="304" />
        </branch>
        <branch name="DataBusFromSlave(11:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="304" y="848" type="branch" />
            <wire x2="368" y1="848" y2="848" x1="304" />
        </branch>
        <branch name="AdrBus(3:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="304" y="912" type="branch" />
            <wire x2="368" y1="912" y2="912" x1="304" />
        </branch>
        <branch name="HallIndex0Pan">
            <wire x2="368" y1="592" y2="592" x1="336" />
        </branch>
        <branch name="Motor1PanE">
            <wire x2="1072" y1="464" y2="464" x1="928" />
        </branch>
        <iomarker fontsize="28" x="336" y="592" name="HallIndex0Pan" orien="R180" />
        <branch name="Motor1PanZero">
            <wire x2="368" y1="272" y2="272" x1="352" />
        </branch>
        <branch name="Clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="320" y="144" type="branch" />
            <wire x2="368" y1="144" y2="144" x1="320" />
        </branch>
        <instance x="368" y="304" name="Motor1PanZeroButton" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="64" y="-272" type="instance" />
        </instance>
        <iomarker fontsize="28" x="352" y="272" name="Motor1PanZero" orien="R180" />
        <branch name="XLXN_420">
            <wire x2="16" y1="320" y2="720" x1="16" />
            <wire x2="368" y1="720" y2="720" x1="16" />
            <wire x2="768" y1="320" y2="320" x1="16" />
            <wire x2="768" y1="208" y2="208" x1="752" />
            <wire x2="768" y1="208" y2="320" x1="768" />
        </branch>
        <branch name="XLXN_421">
            <wire x2="32" y1="336" y2="656" x1="32" />
            <wire x2="368" y1="656" y2="656" x1="32" />
            <wire x2="784" y1="336" y2="336" x1="32" />
            <wire x2="784" y1="144" y2="144" x1="752" />
            <wire x2="784" y1="144" y2="336" x1="784" />
        </branch>
        <iomarker fontsize="28" x="1072" y="464" name="Motor1PanE" orien="R0" />
        <branch name="Motor1Pan(1:0)">
            <wire x2="1376" y1="912" y2="912" x1="928" />
            <wire x2="1760" y1="784" y2="784" x1="1376" />
            <wire x2="1376" y1="784" y2="912" x1="1376" />
        </branch>
        <iomarker fontsize="28" x="1760" y="784" name="Motor1Pan(1:0)" orien="R0" />
        <branch name="Motor2Tilt(1:0)">
            <wire x2="1168" y1="1536" y2="1536" x1="928" />
            <wire x2="1520" y1="1408" y2="1408" x1="1168" />
            <wire x2="1168" y1="1408" y2="1536" x1="1168" />
        </branch>
        <iomarker fontsize="28" x="1040" y="1088" name="Motor2TiltE" orien="R0" />
        <branch name="AdrBus(3:0)">
            <wire x2="2336" y1="1200" y2="1200" x1="2320" />
            <wire x2="2320" y1="1200" y2="1360" x1="2320" />
            <wire x2="3424" y1="1360" y2="1360" x1="2320" />
            <wire x2="3424" y1="304" y2="304" x1="3296" />
            <wire x2="3424" y1="304" y2="1360" x1="3424" />
        </branch>
        <branch name="AdrBus(3:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="240" y="1536" type="branch" />
            <wire x2="368" y1="1536" y2="1536" x1="240" />
        </branch>
        <iomarker fontsize="28" x="2800" y="176" name="Clk" orien="R180" />
        <branch name="MotLed1(1:0)">
            <wire x2="976" y1="976" y2="976" x1="928" />
            <wire x2="976" y1="816" y2="976" x1="976" />
            <wire x2="1040" y1="816" y2="816" x1="976" />
        </branch>
        <iomarker fontsize="28" x="1040" y="816" name="MotLed1(1:0)" orien="R0" />
        <branch name="MotLed2(1:0)">
            <wire x2="960" y1="1600" y2="1600" x1="928" />
        </branch>
        <iomarker fontsize="28" x="960" y="1600" name="MotLed2(1:0)" orien="R0" />
        <iomarker fontsize="28" x="1520" y="1408" name="Motor2Tilt(1:0)" orien="R0" />
        <branch name="Motor2TiltZero">
            <wire x2="320" y1="1952" y2="1952" x1="304" />
        </branch>
        <instance x="320" y="1984" name="Motor2TiltZeroButton" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="64" y="-272" type="instance" />
        </instance>
        <branch name="Clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="272" y="1824" type="branch" />
            <wire x2="288" y1="1824" y2="1824" x1="272" />
            <wire x2="320" y1="1824" y2="1824" x1="288" />
        </branch>
        <iomarker fontsize="28" x="304" y="1952" name="Motor2TiltZero" orien="R180" />
        <iomarker fontsize="28" x="224" y="1216" name="HallIndex1Tilt" orien="R180" />
        <branch name="HallIndex1Tilt">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="992" y="3120" type="branch" />
            <wire x2="1088" y1="3120" y2="3120" x1="992" />
        </branch>
        <branch name="HallIndex0Pan">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="240" y="3120" type="branch" />
            <wire x2="400" y1="3120" y2="3120" x1="240" />
        </branch>
    </sheet>
</drawing>