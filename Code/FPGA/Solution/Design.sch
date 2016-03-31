<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="clk" />
        <signal name="SPI_Clk" />
        <signal name="reset" />
        <signal name="XLXN_8" />
        <signal name="SPI_MISO" />
        <signal name="led(7:0)" />
        <signal name="SPI_MOSI" />
        <signal name="XLXN_9" />
        <signal name="SPI_SS" />
        <signal name="XLXN_11" />
        <signal name="XLXN_12" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="SPI_Clk" />
        <port polarity="Input" name="reset" />
        <port polarity="Output" name="SPI_MISO" />
        <port polarity="Output" name="led(7:0)" />
        <port polarity="Input" name="SPI_MOSI" />
        <port polarity="Input" name="SPI_SS" />
        <blockdef name="Edge_synchroniser">
            <timestamp>2016-3-31T12:13:3</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="SPI">
            <timestamp>2016-3-31T13:36:57</timestamp>
            <line x2="0" y1="32" y2="32" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="256" x="64" y="-192" height="256" />
        </blockdef>
        <block symbolname="Edge_synchroniser" name="XLXI_3">
            <blockpin signalname="reset" name="reset" />
            <blockpin signalname="clk" name="sys_clk" />
            <blockpin signalname="SPI_Clk" name="slow_clk" />
            <blockpin signalname="XLXN_8" name="rise_out" />
            <blockpin name="fall_out" />
        </block>
        <block symbolname="SPI" name="XLXI_5">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="SPI_MOSI" name="mosi" />
            <blockpin signalname="XLXN_11" name="ss" />
            <blockpin signalname="SPI_MISO" name="miso" />
            <blockpin signalname="led(7:0)" name="dataOut(7:0)" />
            <blockpin signalname="XLXN_8" name="spi_clk" />
        </block>
        <block symbolname="Edge_synchroniser" name="XLXI_6">
            <blockpin signalname="reset" name="reset" />
            <blockpin signalname="clk" name="sys_clk" />
            <blockpin signalname="SPI_SS" name="slow_clk" />
            <blockpin signalname="XLXN_11" name="rise_out" />
            <blockpin name="fall_out" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="clk">
            <wire x2="800" y1="1072" y2="1072" x1="704" />
            <wire x2="992" y1="1072" y2="1072" x1="800" />
            <wire x2="800" y1="1072" y2="1360" x1="800" />
            <wire x2="992" y1="1360" y2="1360" x1="800" />
            <wire x2="1696" y1="944" y2="944" x1="800" />
            <wire x2="800" y1="944" y2="1072" x1="800" />
        </branch>
        <iomarker fontsize="28" x="960" y="1136" name="SPI_Clk" orien="R180" />
        <iomarker fontsize="28" x="704" y="1072" name="clk" orien="R180" />
        <branch name="SPI_Clk">
            <wire x2="992" y1="1136" y2="1136" x1="960" />
        </branch>
        <branch name="reset">
            <wire x2="944" y1="1008" y2="1008" x1="912" />
            <wire x2="976" y1="1008" y2="1008" x1="944" />
            <wire x2="992" y1="1008" y2="1008" x1="976" />
            <wire x2="944" y1="1008" y2="1056" x1="944" />
            <wire x2="976" y1="1056" y2="1056" x1="944" />
            <wire x2="976" y1="1056" y2="1296" x1="976" />
            <wire x2="992" y1="1296" y2="1296" x1="976" />
        </branch>
        <instance x="992" y="1168" name="XLXI_3" orien="R0">
        </instance>
        <instance x="1696" y="1104" name="XLXI_5" orien="R0">
        </instance>
        <branch name="XLXN_8">
            <wire x2="1408" y1="1008" y2="1008" x1="1376" />
            <wire x2="1408" y1="1008" y2="1136" x1="1408" />
            <wire x2="1696" y1="1136" y2="1136" x1="1408" />
        </branch>
        <branch name="SPI_MISO">
            <wire x2="2112" y1="944" y2="944" x1="2080" />
        </branch>
        <iomarker fontsize="28" x="2112" y="944" name="SPI_MISO" orien="R0" />
        <branch name="led(7:0)">
            <wire x2="2096" y1="1072" y2="1072" x1="2080" />
            <wire x2="2144" y1="1056" y2="1056" x1="2096" />
            <wire x2="2096" y1="1056" y2="1072" x1="2096" />
        </branch>
        <branch name="SPI_MOSI">
            <wire x2="1696" y1="1008" y2="1008" x1="1632" />
        </branch>
        <iomarker fontsize="28" x="1632" y="1008" name="SPI_MOSI" orien="R180" />
        <instance x="992" y="1456" name="XLXI_6" orien="R0">
        </instance>
        <branch name="SPI_SS">
            <wire x2="992" y1="1424" y2="1424" x1="768" />
        </branch>
        <iomarker fontsize="28" x="768" y="1424" name="SPI_SS" orien="R180" />
        <branch name="XLXN_11">
            <wire x2="1536" y1="1296" y2="1296" x1="1376" />
            <wire x2="1536" y1="1072" y2="1296" x1="1536" />
            <wire x2="1696" y1="1072" y2="1072" x1="1536" />
        </branch>
        <iomarker fontsize="28" x="912" y="1008" name="reset" orien="R180" />
        <iomarker fontsize="28" x="2144" y="1056" name="led(7:0)" orien="R0" />
    </sheet>
</drawing>