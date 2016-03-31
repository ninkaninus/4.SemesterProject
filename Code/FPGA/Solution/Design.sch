<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="SPI_Clk" />
        <signal name="SPI_MOSI" />
        <signal name="SPI_SS" />
        <signal name="SPI_MISO" />
        <signal name="pwm(7:0)" />
        <port polarity="Input" name="SPI_Clk" />
        <port polarity="Input" name="SPI_MOSI" />
        <port polarity="Input" name="SPI_SS" />
        <port polarity="Output" name="SPI_MISO" />
        <port polarity="Output" name="pwm(7:0)" />
        <blockdef name="SPI">
            <timestamp>2016-3-31T0:43:12</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="SPI" name="XLXI_2">
            <blockpin signalname="SPI_Clk" name="clk" />
            <blockpin signalname="SPI_MOSI" name="mosi" />
            <blockpin signalname="SPI_SS" name="ss" />
            <blockpin signalname="SPI_MISO" name="miso" />
            <blockpin signalname="pwm(7:0)" name="dataOut(7:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1808" y="1168" name="XLXI_2" orien="R0">
        </instance>
        <branch name="SPI_Clk">
            <wire x2="1808" y1="1008" y2="1008" x1="1776" />
        </branch>
        <iomarker fontsize="28" x="1776" y="1008" name="SPI_Clk" orien="R180" />
        <branch name="SPI_MOSI">
            <wire x2="1808" y1="1072" y2="1072" x1="1776" />
        </branch>
        <iomarker fontsize="28" x="1776" y="1072" name="SPI_MOSI" orien="R180" />
        <branch name="SPI_SS">
            <wire x2="1808" y1="1136" y2="1136" x1="1776" />
        </branch>
        <iomarker fontsize="28" x="1776" y="1136" name="SPI_SS" orien="R180" />
        <branch name="SPI_MISO">
            <wire x2="2224" y1="1008" y2="1008" x1="2192" />
        </branch>
        <iomarker fontsize="28" x="2224" y="1008" name="SPI_MISO" orien="R0" />
        <branch name="pwm(7:0)">
            <wire x2="2224" y1="1136" y2="1136" x1="2192" />
        </branch>
        <iomarker fontsize="28" x="2224" y="1136" name="pwm(7:0)" orien="R0" />
    </sheet>
</drawing>