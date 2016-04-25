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
        <signal name="sw(7:0)" />
        <signal name="led(7:0)" />
        <signal name="clk" />
        <signal name="XLXN_152" />
        <signal name="XLXN_153(11:0)" />
        <signal name="XLXN_154" />
        <signal name="XLXN_155" />
        <signal name="XLXN_156(3:0)" />
        <port polarity="Input" name="SPI_MOSI" />
        <port polarity="Output" name="SPI_MISO" />
        <port polarity="Input" name="SPI_SS" />
        <port polarity="Input" name="SPI_Clk" />
        <port polarity="Input" name="sw(7:0)" />
        <port polarity="Output" name="led(7:0)" />
        <port polarity="Input" name="clk" />
        <blockdef name="SPI_Slave3">
            <timestamp>2016-4-14T13:14:16</timestamp>
            <line x2="384" y1="32" y2="32" x1="320" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="256" x="64" y="-256" height="320" />
        </blockdef>
        <blockdef name="Blok1">
            <timestamp>2016-4-15T11:52:16</timestamp>
            <rect width="288" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="352" y="-236" height="24" />
            <line x2="416" y1="-224" y2="-224" x1="352" />
            <rect width="64" x="352" y="-44" height="24" />
            <line x2="416" y1="-32" y2="-32" x1="352" />
        </blockdef>
        <block symbolname="SPI_Slave3" name="XLXI_21">
            <blockpin signalname="clk" name="Clk" />
            <blockpin signalname="SPI_Clk" name="SClk" />
            <blockpin signalname="SPI_SS" name="SS" />
            <blockpin signalname="SPI_MOSI" name="MOSI" />
            <blockpin signalname="XLXN_153(11:0)" name="DataBus(11:0)" />
            <blockpin signalname="SPI_MISO" name="MISO" />
            <blockpin signalname="XLXN_156(3:0)" name="AdrBus(3:0)" />
            <blockpin signalname="XLXN_155" name="WE" />
        </block>
        <block symbolname="Blok1" name="XLXI_27">
            <blockpin signalname="clk" name="Clk" />
            <blockpin signalname="XLXN_155" name="WE" />
            <blockpin signalname="XLXN_156(3:0)" name="AdrBus(3:0)" />
            <blockpin signalname="sw(7:0)" name="Sw(7:0)" />
            <blockpin signalname="led(7:0)" name="Led(7:0)" />
            <blockpin signalname="XLXN_153(11:0)" name="DataBus(11:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="SPI_MOSI">
            <wire x2="368" y1="928" y2="928" x1="336" />
        </branch>
        <branch name="SPI_MISO">
            <wire x2="768" y1="736" y2="736" x1="752" />
        </branch>
        <branch name="SPI_SS">
            <wire x2="368" y1="864" y2="864" x1="304" />
        </branch>
        <branch name="SPI_Clk">
            <wire x2="368" y1="800" y2="800" x1="304" />
        </branch>
        <iomarker fontsize="28" x="336" y="928" name="SPI_MOSI" orien="R180" />
        <iomarker fontsize="28" x="304" y="864" name="SPI_SS" orien="R180" />
        <iomarker fontsize="28" x="304" y="800" name="SPI_Clk" orien="R180" />
        <iomarker fontsize="28" x="768" y="736" name="SPI_MISO" orien="R0" />
        <instance x="368" y="960" name="XLXI_21" orien="R0">
        </instance>
        <iomarker fontsize="28" x="224" y="176" name="clk" orien="R180" />
        <instance x="1200" y="1072" name="XLXI_27" orien="R0">
        </instance>
        <branch name="sw(7:0)">
            <wire x2="1200" y1="1040" y2="1040" x1="1168" />
        </branch>
        <branch name="led(7:0)">
            <wire x2="1648" y1="848" y2="848" x1="1616" />
        </branch>
        <iomarker fontsize="28" x="1648" y="848" name="led(7:0)" orien="R0" />
        <iomarker fontsize="28" x="1168" y="1040" name="sw(7:0)" orien="R180" />
        <branch name="clk">
            <wire x2="368" y1="176" y2="176" x1="224" />
            <wire x2="368" y1="176" y2="736" x1="368" />
            <wire x2="1120" y1="176" y2="176" x1="368" />
            <wire x2="1120" y1="176" y2="848" x1="1120" />
            <wire x2="1200" y1="848" y2="848" x1="1120" />
        </branch>
        <branch name="XLXN_153(11:0)">
            <wire x2="880" y1="928" y2="928" x1="752" />
            <wire x2="880" y1="928" y2="1232" x1="880" />
            <wire x2="1664" y1="1232" y2="1232" x1="880" />
            <wire x2="1664" y1="1040" y2="1040" x1="1616" />
            <wire x2="1664" y1="1040" y2="1216" x1="1664" />
            <wire x2="1664" y1="1216" y2="1232" x1="1664" />
        </branch>
        <branch name="XLXN_155">
            <wire x2="976" y1="992" y2="992" x1="752" />
            <wire x2="976" y1="912" y2="992" x1="976" />
            <wire x2="1200" y1="912" y2="912" x1="976" />
        </branch>
        <branch name="XLXN_156(3:0)">
            <wire x2="960" y1="864" y2="864" x1="752" />
            <wire x2="960" y1="864" y2="976" x1="960" />
            <wire x2="1200" y1="976" y2="976" x1="960" />
        </branch>
    </sheet>
</drawing>