<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="clk" />
        <signal name="SPI_MOSI" />
        <signal name="SPI_MISO" />
        <signal name="SPI_SS" />
        <signal name="SPI_Clk" />
        <signal name="Write_Enable" />
        <signal name="XLXN_1(11:0)" />
        <signal name="sw(7:0)" />
        <signal name="led(7:0)" />
        <signal name="XLXN_12" />
        <signal name="XLXN_13(3:0)" />
        <signal name="XLXN_16(11:0)" />
        <signal name="XLXN_17(11:0)" />
        <signal name="XLXN_24(11:0)" />
        <signal name="XLXN_25(11:0)" />
        <signal name="XLXN_26(11:0)" />
        <signal name="XLXN_27(11:0)" />
        <signal name="XLXN_28(11:0)" />
        <signal name="XLXN_29(11:0)" />
        <signal name="XLXN_30(11:0)" />
        <signal name="XLXN_31(11:0)" />
        <signal name="XLXN_32(11:0)" />
        <signal name="XLXN_33(11:0)" />
        <signal name="XLXN_34(11:0)" />
        <signal name="XLXN_35(11:0)" />
        <signal name="XLXN_36(11:0)" />
        <signal name="XLXN_37(11:0)" />
        <signal name="XLXN_38(11:0)" />
        <signal name="XLXN_40" />
        <signal name="XLXN_41" />
        <signal name="XLXN_42(3:0)" />
        <signal name="XLXN_43" />
        <signal name="XLXN_45(11:0)" />
        <signal name="motor(1:0)" />
        <signal name="XLXN_47" />
        <signal name="encoder1" />
        <signal name="encoder2" />
        <signal name="XLXN_50(15:0)" />
        <signal name="XLXN_51" />
        <signal name="XLXN_52(3:0)" />
        <signal name="XLXN_53(11:0)" />
        <signal name="XLXN_54(11:0)" />
        <signal name="XLXN_56(11:0)" />
        <signal name="seg(0:7)" />
        <signal name="Enable(3:0)" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="SPI_MOSI" />
        <port polarity="Output" name="SPI_MISO" />
        <port polarity="Input" name="SPI_SS" />
        <port polarity="Input" name="SPI_Clk" />
        <port polarity="Input" name="sw(7:0)" />
        <port polarity="Output" name="led(7:0)" />
        <port polarity="Output" name="motor(1:0)" />
        <port polarity="Input" name="encoder1" />
        <port polarity="Input" name="encoder2" />
        <port polarity="Output" name="seg(0:7)" />
        <port polarity="Output" name="Enable(3:0)" />
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
        <blockdef name="Blok1">
            <timestamp>2016-4-28T9:32:46</timestamp>
            <rect width="64" x="0" y="20" height="24" />
            <line x2="0" y1="32" y2="32" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="352" y="-236" height="24" />
            <line x2="416" y1="-224" y2="-224" x1="352" />
            <rect width="288" x="64" y="-256" height="360" />
            <line x2="416" y1="80" y2="80" x1="352" />
            <rect width="64" x="352" y="68" height="24" />
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
        <blockdef name="pwm_driver">
            <timestamp>2016-4-28T15:0:12</timestamp>
            <rect width="64" x="0" y="52" height="24" />
            <line x2="0" y1="64" y2="64" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="0" y1="16" y2="16" x1="64" />
            <line x2="0" y1="-112" y2="-112" x1="64" />
            <rect width="64" x="0" y="-124" height="24" />
            <rect width="256" x="64" y="-192" height="288" />
        </blockdef>
        <blockdef name="Motor_Interface">
            <timestamp>2016-4-28T15:0:3</timestamp>
            <rect width="64" x="0" y="132" height="24" />
            <line x2="0" y1="144" y2="144" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="0" y="-60" height="24" />
            <line x2="0" y1="-48" y2="-48" x1="64" />
            <line x2="0" y1="48" y2="48" x1="64" />
            <line x2="0" y1="96" y2="96" x1="64" />
            <rect width="256" x="64" y="-128" height="296" />
        </blockdef>
        <blockdef name="PositionsModul">
            <timestamp>2016-4-28T15:7:34</timestamp>
            <rect width="64" x="0" y="212" height="24" />
            <line x2="0" y1="224" y2="224" x1="64" />
            <line x2="0" y1="32" y2="32" x1="64" />
            <rect width="64" x="0" y="84" height="24" />
            <line x2="0" y1="96" y2="96" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="256" x="64" y="-192" height="448" />
            <line x2="384" y1="176" y2="176" x1="320" />
            <rect width="64" x="320" y="164" height="24" />
        </blockdef>
        <blockdef name="MultiplexDisplay">
            <timestamp>2016-4-15T9:16:37</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="Mux16x12_4" name="XLXI_30">
            <blockpin signalname="XLXN_54(11:0)" name="input0(11:0)" />
            <blockpin signalname="XLXN_54(11:0)" name="input1(11:0)" />
            <blockpin signalname="XLXN_54(11:0)" name="input2(11:0)" />
            <blockpin signalname="XLXN_56(11:0)" name="input3(11:0)" />
            <blockpin signalname="XLXN_54(11:0)" name="input4(11:0)" />
            <blockpin signalname="XLXN_54(11:0)" name="input5(11:0)" />
            <blockpin signalname="XLXN_54(11:0)" name="input6(11:0)" />
            <blockpin signalname="XLXN_54(11:0)" name="input7(11:0)" />
            <blockpin signalname="XLXN_54(11:0)" name="input8(11:0)" />
            <blockpin signalname="XLXN_16(11:0)" name="input9(11:0)" />
            <blockpin signalname="XLXN_54(11:0)" name="input10(11:0)" />
            <blockpin signalname="XLXN_54(11:0)" name="input11(11:0)" />
            <blockpin signalname="XLXN_54(11:0)" name="input12(11:0)" />
            <blockpin signalname="XLXN_54(11:0)" name="input13(11:0)" />
            <blockpin signalname="XLXN_54(11:0)" name="input14(11:0)" />
            <blockpin signalname="XLXN_54(11:0)" name="input15(11:0)" />
            <blockpin signalname="XLXN_52(3:0)" name="sel(3:0)" />
            <blockpin signalname="XLXN_38(11:0)" name="dataOut(11:0)" />
        </block>
        <block symbolname="SPI_Slave3" name="XLXI_21">
            <blockpin signalname="clk" name="Clk" />
            <blockpin signalname="SPI_Clk" name="SClk" />
            <blockpin signalname="SPI_SS" name="SS" />
            <blockpin signalname="SPI_MOSI" name="MOSI" />
            <blockpin signalname="SPI_MISO" name="MISO" />
            <blockpin signalname="Write_Enable" name="WE" />
            <blockpin signalname="XLXN_52(3:0)" name="AdrBus(3:0)" />
            <blockpin signalname="XLXN_53(11:0)" name="DataBusFromSlave(11:0)" />
            <blockpin signalname="XLXN_38(11:0)" name="DataBusToSlave(11:0)" />
        </block>
        <block symbolname="Blok1" name="XLXI_27">
            <blockpin signalname="clk" name="Clk" />
            <blockpin signalname="Write_Enable" name="WE" />
            <blockpin signalname="XLXN_52(3:0)" name="AdrBus(3:0)" />
            <blockpin signalname="XLXN_53(11:0)" name="DataBusFromSlave(11:0)" />
            <blockpin signalname="sw(7:0)" name="Sw(7:0)" />
            <blockpin signalname="led(7:0)" name="Led(7:0)" />
            <blockpin signalname="XLXN_16(11:0)" name="DataBusToSlave(11:0)" />
        </block>
        <block symbolname="constant" name="XLXI_34">
            <attr value="0000" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_54(11:0)" name="O" />
        </block>
        <block symbolname="pwm_driver" name="XLXI_35">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="Write_Enable" name="WE" />
            <blockpin signalname="XLXN_52(3:0)" name="AdrBus(3:0)" />
            <blockpin signalname="XLXN_40" name="pwm" />
            <blockpin signalname="XLXN_53(11:0)" name="DataBusFromSlave(11:0)" />
        </block>
        <block symbolname="Motor_Interface" name="XLXI_36">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="XLXN_40" name="pwm" />
            <blockpin signalname="Write_Enable" name="WE" />
            <blockpin signalname="XLXN_52(3:0)" name="AdrBus(3:0)" />
            <blockpin signalname="XLXN_53(11:0)" name="DataBusFromSlave(11:0)" />
            <blockpin signalname="motor(1:0)" name="motor(1:0)" />
        </block>
        <block symbolname="PositionsModul" name="XLXI_37">
            <blockpin signalname="clk" name="Clk" />
            <blockpin signalname="encoder1" name="Encoder1" />
            <blockpin signalname="encoder2" name="Encoder2" />
            <blockpin signalname="Write_Enable" name="WE" />
            <blockpin signalname="XLXN_52(3:0)" name="AdrBus(3:0)" />
            <blockpin signalname="XLXN_50(15:0)" name="Bcd(15:0)" />
            <blockpin signalname="XLXN_53(11:0)" name="DataBusFromSlave(11:0)" />
            <blockpin signalname="XLXN_56(11:0)" name="DataBusToSlave(11:0)" />
        </block>
        <block symbolname="MultiplexDisplay" name="XLXI_38">
            <blockpin signalname="clk" name="Clk_50MHz" />
            <blockpin signalname="XLXN_50(15:0)" name="Bcd(15:0)" />
            <blockpin signalname="seg(0:7)" name="Seg(1:8)" />
            <blockpin signalname="Enable(3:0)" name="An(3:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <iomarker fontsize="28" x="224" y="176" name="clk" orien="R180" />
        <branch name="clk">
            <wire x2="368" y1="176" y2="176" x1="224" />
            <wire x2="368" y1="176" y2="288" x1="368" />
            <wire x2="1008" y1="176" y2="176" x1="368" />
            <wire x2="1008" y1="176" y2="352" x1="1008" />
            <wire x2="1216" y1="352" y2="352" x1="1008" />
            <wire x2="1840" y1="176" y2="176" x1="1008" />
            <wire x2="1840" y1="176" y2="704" x1="1840" />
            <wire x2="1856" y1="704" y2="704" x1="1840" />
            <wire x2="2096" y1="704" y2="704" x1="1856" />
            <wire x2="1856" y1="704" y2="912" x1="1856" />
            <wire x2="2064" y1="912" y2="912" x1="1856" />
            <wire x2="2112" y1="912" y2="912" x1="2064" />
            <wire x2="2080" y1="96" y2="96" x1="1840" />
            <wire x2="1840" y1="96" y2="176" x1="1840" />
            <wire x2="2064" y1="800" y2="912" x1="2064" />
            <wire x2="2544" y1="800" y2="800" x1="2064" />
            <wire x2="2544" y1="800" y2="1008" x1="2544" />
            <wire x2="2576" y1="1008" y2="1008" x1="2544" />
        </branch>
        <branch name="SPI_MOSI">
            <wire x2="368" y1="480" y2="480" x1="336" />
        </branch>
        <branch name="SPI_MISO">
            <wire x2="768" y1="288" y2="288" x1="752" />
        </branch>
        <branch name="SPI_SS">
            <wire x2="368" y1="416" y2="416" x1="304" />
        </branch>
        <branch name="SPI_Clk">
            <wire x2="368" y1="352" y2="352" x1="304" />
        </branch>
        <instance x="368" y="512" name="XLXI_21" orien="R0">
        </instance>
        <branch name="Write_Enable">
            <wire x2="944" y1="544" y2="544" x1="752" />
            <wire x2="944" y1="416" y2="544" x1="944" />
            <wire x2="1152" y1="416" y2="416" x1="944" />
            <wire x2="1216" y1="416" y2="416" x1="1152" />
            <wire x2="1152" y1="224" y2="416" x1="1152" />
            <wire x2="1888" y1="224" y2="224" x1="1152" />
            <wire x2="1888" y1="224" y2="352" x1="1888" />
            <wire x2="1888" y1="352" y2="656" x1="1888" />
            <wire x2="2096" y1="656" y2="656" x1="1888" />
            <wire x2="1888" y1="656" y2="1104" x1="1888" />
            <wire x2="2112" y1="1104" y2="1104" x1="1888" />
            <wire x2="1984" y1="352" y2="352" x1="1888" />
            <wire x2="1984" y1="272" y2="352" x1="1984" />
            <wire x2="2080" y1="272" y2="272" x1="1984" />
        </branch>
        <iomarker fontsize="28" x="336" y="480" name="SPI_MOSI" orien="R180" />
        <iomarker fontsize="28" x="304" y="416" name="SPI_SS" orien="R180" />
        <iomarker fontsize="28" x="304" y="352" name="SPI_Clk" orien="R180" />
        <iomarker fontsize="28" x="768" y="288" name="SPI_MISO" orien="R0" />
        <instance x="1216" y="576" name="XLXI_27" orien="R0">
        </instance>
        <branch name="sw(7:0)">
            <wire x2="1216" y1="544" y2="544" x1="1184" />
        </branch>
        <branch name="led(7:0)">
            <wire x2="1664" y1="352" y2="352" x1="1632" />
        </branch>
        <iomarker fontsize="28" x="1664" y="352" name="led(7:0)" orien="R0" />
        <iomarker fontsize="28" x="1184" y="544" name="sw(7:0)" orien="R180" />
        <instance x="1216" y="1904" name="XLXI_30" orien="R0">
        </instance>
        <branch name="XLXN_16(11:0)">
            <wire x2="1712" y1="736" y2="736" x1="992" />
            <wire x2="992" y1="736" y2="1424" x1="992" />
            <wire x2="1216" y1="1424" y2="1424" x1="992" />
            <wire x2="1712" y1="656" y2="656" x1="1632" />
            <wire x2="1712" y1="656" y2="736" x1="1712" />
        </branch>
        <instance x="896" y="1520" name="XLXI_34" orien="R0">
        </instance>
        <branch name="XLXN_38(11:0)">
            <wire x2="96" y1="576" y2="2096" x1="96" />
            <wire x2="1600" y1="2096" y2="2096" x1="96" />
            <wire x2="368" y1="576" y2="576" x1="96" />
            <wire x2="1600" y1="1936" y2="2096" x1="1600" />
        </branch>
        <instance x="2096" y="608" name="XLXI_36" orien="R0">
        </instance>
        <branch name="XLXN_40">
            <wire x2="2080" y1="432" y2="512" x1="2080" />
            <wire x2="2096" y1="512" y2="512" x1="2080" />
            <wire x2="2544" y1="432" y2="432" x1="2080" />
            <wire x2="2544" y1="96" y2="96" x1="2464" />
            <wire x2="2544" y1="96" y2="432" x1="2544" />
        </branch>
        <instance x="2080" y="256" name="XLXI_35" orien="R0">
        </instance>
        <branch name="motor(1:0)">
            <wire x2="2512" y1="512" y2="512" x1="2480" />
        </branch>
        <iomarker fontsize="28" x="2512" y="512" name="motor(1:0)" orien="R0" />
        <instance x="2112" y="1072" name="XLXI_37" orien="R0">
        </instance>
        <branch name="encoder1">
            <wire x2="2112" y1="976" y2="976" x1="2080" />
        </branch>
        <iomarker fontsize="28" x="2080" y="976" name="encoder1" orien="R180" />
        <branch name="encoder2">
            <wire x2="2112" y1="1040" y2="1040" x1="2080" />
        </branch>
        <iomarker fontsize="28" x="2080" y="1040" name="encoder2" orien="R180" />
        <instance x="2576" y="1104" name="XLXI_38" orien="R0">
        </instance>
        <branch name="XLXN_50(15:0)">
            <wire x2="2528" y1="912" y2="912" x1="2496" />
            <wire x2="2528" y1="912" y2="1072" x1="2528" />
            <wire x2="2576" y1="1072" y2="1072" x1="2528" />
        </branch>
        <branch name="XLXN_52(3:0)">
            <wire x2="848" y1="416" y2="416" x1="752" />
            <wire x2="848" y1="416" y2="480" x1="848" />
            <wire x2="848" y1="480" y2="1872" x1="848" />
            <wire x2="1216" y1="1872" y2="1872" x1="848" />
            <wire x2="1072" y1="480" y2="480" x1="848" />
            <wire x2="1216" y1="480" y2="480" x1="1072" />
            <wire x2="1072" y1="192" y2="480" x1="1072" />
            <wire x2="1920" y1="192" y2="192" x1="1072" />
            <wire x2="1920" y1="192" y2="224" x1="1920" />
            <wire x2="1920" y1="224" y2="560" x1="1920" />
            <wire x2="2096" y1="560" y2="560" x1="1920" />
            <wire x2="2000" y1="224" y2="224" x1="1920" />
            <wire x2="1920" y1="560" y2="560" x1="1904" />
            <wire x2="1904" y1="560" y2="1168" x1="1904" />
            <wire x2="2112" y1="1168" y2="1168" x1="1904" />
            <wire x2="2000" y1="144" y2="224" x1="2000" />
            <wire x2="2080" y1="144" y2="144" x1="2000" />
        </branch>
        <branch name="XLXN_53(11:0)">
            <wire x2="1088" y1="608" y2="608" x1="752" />
            <wire x2="1216" y1="608" y2="608" x1="1088" />
            <wire x2="1088" y1="608" y2="704" x1="1088" />
            <wire x2="1808" y1="704" y2="704" x1="1088" />
            <wire x2="1808" y1="704" y2="752" x1="1808" />
            <wire x2="2096" y1="752" y2="752" x1="1808" />
            <wire x2="1808" y1="752" y2="1296" x1="1808" />
            <wire x2="2112" y1="1296" y2="1296" x1="1808" />
            <wire x2="1808" y1="416" y2="704" x1="1808" />
            <wire x2="2032" y1="416" y2="416" x1="1808" />
            <wire x2="2080" y1="320" y2="320" x1="2032" />
            <wire x2="2032" y1="320" y2="416" x1="2032" />
        </branch>
        <branch name="XLXN_54(11:0)">
            <wire x2="1200" y1="1552" y2="1552" x1="1040" />
            <wire x2="1216" y1="1552" y2="1552" x1="1200" />
            <wire x2="1200" y1="1552" y2="1616" x1="1200" />
            <wire x2="1216" y1="1616" y2="1616" x1="1200" />
            <wire x2="1200" y1="1616" y2="1680" x1="1200" />
            <wire x2="1216" y1="1680" y2="1680" x1="1200" />
            <wire x2="1200" y1="1680" y2="1744" x1="1200" />
            <wire x2="1216" y1="1744" y2="1744" x1="1200" />
            <wire x2="1200" y1="1744" y2="1808" x1="1200" />
            <wire x2="1216" y1="1808" y2="1808" x1="1200" />
            <wire x2="1216" y1="848" y2="848" x1="1200" />
            <wire x2="1200" y1="848" y2="912" x1="1200" />
            <wire x2="1216" y1="912" y2="912" x1="1200" />
            <wire x2="1200" y1="912" y2="976" x1="1200" />
            <wire x2="1216" y1="976" y2="976" x1="1200" />
            <wire x2="1200" y1="976" y2="1104" x1="1200" />
            <wire x2="1216" y1="1104" y2="1104" x1="1200" />
            <wire x2="1200" y1="1104" y2="1168" x1="1200" />
            <wire x2="1216" y1="1168" y2="1168" x1="1200" />
            <wire x2="1200" y1="1168" y2="1232" x1="1200" />
            <wire x2="1216" y1="1232" y2="1232" x1="1200" />
            <wire x2="1200" y1="1232" y2="1296" x1="1200" />
            <wire x2="1216" y1="1296" y2="1296" x1="1200" />
            <wire x2="1200" y1="1296" y2="1360" x1="1200" />
            <wire x2="1216" y1="1360" y2="1360" x1="1200" />
            <wire x2="1200" y1="1360" y2="1488" x1="1200" />
            <wire x2="1216" y1="1488" y2="1488" x1="1200" />
            <wire x2="1200" y1="1488" y2="1552" x1="1200" />
        </branch>
        <branch name="XLXN_56(11:0)">
            <wire x2="1216" y1="1040" y2="1040" x1="1120" />
            <wire x2="1120" y1="1040" y2="2016" x1="1120" />
            <wire x2="2576" y1="2016" y2="2016" x1="1120" />
            <wire x2="2576" y1="1248" y2="1248" x1="2496" />
            <wire x2="2576" y1="1248" y2="2016" x1="2576" />
        </branch>
        <branch name="seg(0:7)">
            <wire x2="2992" y1="1008" y2="1008" x1="2960" />
        </branch>
        <iomarker fontsize="28" x="2992" y="1008" name="seg(0:7)" orien="R0" />
        <branch name="Enable(3:0)">
            <wire x2="2992" y1="1072" y2="1072" x1="2960" />
        </branch>
        <iomarker fontsize="28" x="2992" y="1072" name="Enable(3:0)" orien="R0" />
    </sheet>
</drawing>