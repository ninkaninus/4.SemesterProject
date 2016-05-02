<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="SPI_MOSI" />
        <signal name="SPI_MISO" />
        <signal name="SPI_SS" />
        <signal name="SPI_Clk" />
        <signal name="XLXN_38(11:0)" />
        <signal name="XLXN_70(11:0)" />
        <port polarity="Input" name="SPI_MOSI" />
        <port polarity="Output" name="SPI_MISO" />
        <port polarity="Input" name="SPI_SS" />
        <port polarity="Input" name="SPI_Clk" />
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
        <block symbolname="Mux16x12_4" name="XLXI_30">
            <blockpin signalname="XLXN_70(11:0)" name="input0(11:0)" />
            <blockpin signalname="XLXN_70(11:0)" name="input1(11:0)" />
            <blockpin signalname="XLXN_70(11:0)" name="input2(11:0)" />
            <blockpin name="input3(11:0)" />
            <blockpin signalname="XLXN_70(11:0)" name="input4(11:0)" />
            <blockpin signalname="XLXN_70(11:0)" name="input5(11:0)" />
            <blockpin signalname="XLXN_70(11:0)" name="input6(11:0)" />
            <blockpin signalname="XLXN_70(11:0)" name="input7(11:0)" />
            <blockpin signalname="XLXN_70(11:0)" name="input8(11:0)" />
            <blockpin name="input9(11:0)" />
            <blockpin signalname="XLXN_70(11:0)" name="input10(11:0)" />
            <blockpin signalname="XLXN_70(11:0)" name="input11(11:0)" />
            <blockpin signalname="XLXN_70(11:0)" name="input12(11:0)" />
            <blockpin signalname="XLXN_70(11:0)" name="input13(11:0)" />
            <blockpin signalname="XLXN_70(11:0)" name="input14(11:0)" />
            <blockpin signalname="XLXN_70(11:0)" name="input15(11:0)" />
            <blockpin name="sel(3:0)" />
            <blockpin signalname="XLXN_38(11:0)" name="dataOut(11:0)" />
        </block>
        <block symbolname="SPI_Slave3" name="XLXI_21">
            <blockpin name="Clk" />
            <blockpin signalname="SPI_Clk" name="SClk" />
            <blockpin signalname="SPI_SS" name="SS" />
            <blockpin signalname="SPI_MOSI" name="MOSI" />
            <blockpin signalname="SPI_MISO" name="MISO" />
            <blockpin name="WE" />
            <blockpin name="AdrBus(3:0)" />
            <blockpin name="DataBusFromSlave(11:0)" />
            <blockpin signalname="XLXN_38(11:0)" name="DataBusToSlave(11:0)" />
        </block>
        <block symbolname="constant" name="XLXI_34">
            <attr value="0000" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_70(11:0)" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
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
        <iomarker fontsize="28" x="336" y="480" name="SPI_MOSI" orien="R180" />
        <iomarker fontsize="28" x="304" y="416" name="SPI_SS" orien="R180" />
        <iomarker fontsize="28" x="304" y="352" name="SPI_Clk" orien="R180" />
        <iomarker fontsize="28" x="768" y="288" name="SPI_MISO" orien="R0" />
        <instance x="1216" y="1904" name="XLXI_30" orien="R0">
        </instance>
        <instance x="896" y="1520" name="XLXI_34" orien="R0">
        </instance>
        <branch name="XLXN_38(11:0)">
            <wire x2="96" y1="576" y2="2096" x1="96" />
            <wire x2="1600" y1="2096" y2="2096" x1="96" />
            <wire x2="368" y1="576" y2="576" x1="96" />
            <wire x2="1600" y1="1936" y2="2096" x1="1600" />
        </branch>
        <branch name="XLXN_70(11:0)">
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
            <wire x2="1200" y1="976" y2="976" x1="1168" />
            <wire x2="1216" y1="976" y2="976" x1="1200" />
            <wire x2="1168" y1="976" y2="1104" x1="1168" />
            <wire x2="1200" y1="1104" y2="1104" x1="1168" />
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
            <wire x2="1216" y1="848" y2="848" x1="1200" />
            <wire x2="1200" y1="848" y2="912" x1="1200" />
            <wire x2="1216" y1="912" y2="912" x1="1200" />
            <wire x2="1200" y1="912" y2="976" x1="1200" />
        </branch>
    </sheet>
</drawing>