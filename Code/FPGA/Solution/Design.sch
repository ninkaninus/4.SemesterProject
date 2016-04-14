<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_17" />
        <signal name="XLXN_67" />
        <signal name="clk" />
        <signal name="XLXN_74" />
        <signal name="XLXN_75(11:0)" />
        <signal name="SPI_MOSI" />
        <signal name="SPI_MISO" />
        <signal name="SPI_SS" />
        <signal name="SPI_Clk" />
        <signal name="DataBus(7:0)" />
        <signal name="XLXN_88(11:0)" />
        <signal name="DataBus(11:0)" />
        <signal name="DataBus(1:0)" />
        <signal name="motor(1:0)" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="SPI_MOSI" />
        <port polarity="Output" name="SPI_MISO" />
        <port polarity="Input" name="SPI_SS" />
        <port polarity="Input" name="SPI_Clk" />
        <port polarity="Output" name="motor(1:0)" />
        <blockdef name="pwm_driver">
            <timestamp>2016-3-31T18:42:3</timestamp>
            <line x2="384" y1="32" y2="32" x1="320" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="256" x="64" y="-192" height="256" />
        </blockdef>
        <blockdef name="Motor_Interface">
            <timestamp>2016-3-31T20:50:37</timestamp>
            <rect width="64" x="0" y="20" height="24" />
            <line x2="0" y1="32" y2="32" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="256" x="64" y="-128" height="192" />
        </blockdef>
        <blockdef name="constant">
            <timestamp>2006-1-1T10:10:10</timestamp>
            <rect width="112" x="0" y="0" height="64" />
            <line x2="112" y1="32" y2="32" x1="144" />
        </blockdef>
        <blockdef name="SPI_Slave3">
            <timestamp>2016-4-14T8:57:43</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="pwm_driver" name="XLXI_7">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="XLXN_67" name="enable" />
            <blockpin signalname="DataBus(7:0)" name="data(7:0)" />
            <blockpin signalname="XLXN_17" name="pwm" />
        </block>
        <block symbolname="Motor_Interface" name="XLXI_9">
            <blockpin signalname="XLXN_17" name="pwm" />
            <blockpin signalname="motor(1:0)" name="motor(1:0)" />
            <blockpin signalname="DataBus(1:0)" name="motor_State(1:0)" />
        </block>
        <block symbolname="constant" name="XLXI_15">
            <attr value="1" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_67" name="O" />
        </block>
        <block symbolname="SPI_Slave3" name="XLXI_17">
            <blockpin signalname="clk" name="Clk" />
            <blockpin signalname="SPI_Clk" name="SClk" />
            <blockpin signalname="SPI_SS" name="SS" />
            <blockpin signalname="SPI_MOSI" name="MOSI" />
            <blockpin signalname="DataBus(11:0)" name="DataBus(11:0)" />
            <blockpin signalname="SPI_MISO" name="MISO" />
            <blockpin name="WE" />
            <blockpin name="AdrBus(3:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="XLXN_67">
            <wire x2="1152" y1="224" y2="224" x1="1040" />
        </branch>
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
        <instance x="368" y="960" name="XLXI_17" orien="R0">
        </instance>
        <iomarker fontsize="28" x="336" y="928" name="SPI_MOSI" orien="R180" />
        <iomarker fontsize="28" x="304" y="864" name="SPI_SS" orien="R180" />
        <iomarker fontsize="28" x="304" y="800" name="SPI_Clk" orien="R180" />
        <branch name="clk">
            <wire x2="368" y1="160" y2="160" x1="224" />
            <wire x2="368" y1="160" y2="736" x1="368" />
            <wire x2="1152" y1="160" y2="160" x1="368" />
        </branch>
        <iomarker fontsize="28" x="224" y="160" name="clk" orien="R180" />
        <iomarker fontsize="28" x="768" y="736" name="SPI_MISO" orien="R0" />
        <instance x="1152" y="320" name="XLXI_7" orien="R0">
        </instance>
        <instance x="1152" y="624" name="XLXI_9" orien="R0">
        </instance>
        <branch name="XLXN_17">
            <wire x2="1536" y1="400" y2="400" x1="1136" />
            <wire x2="1136" y1="400" y2="528" x1="1136" />
            <wire x2="1152" y1="528" y2="528" x1="1136" />
            <wire x2="1536" y1="352" y2="400" x1="1536" />
        </branch>
        <branch name="DataBus(7:0)">
            <wire x2="1136" y1="288" y2="288" x1="1056" />
            <wire x2="1152" y1="288" y2="288" x1="1136" />
        </branch>
        <branch name="DataBus(11:0)">
            <wire x2="960" y1="928" y2="928" x1="752" />
            <wire x2="960" y1="288" y2="352" x1="960" />
            <wire x2="960" y1="352" y2="656" x1="960" />
            <wire x2="960" y1="656" y2="928" x1="960" />
        </branch>
        <bustap x2="1056" y1="288" y2="288" x1="960" />
        <bustap x2="1056" y1="656" y2="656" x1="960" />
        <branch name="DataBus(1:0)">
            <wire x2="1152" y1="656" y2="656" x1="1056" />
        </branch>
        <branch name="motor(1:0)">
            <wire x2="1552" y1="528" y2="528" x1="1536" />
            <wire x2="1696" y1="528" y2="528" x1="1552" />
        </branch>
        <iomarker fontsize="28" x="1696" y="528" name="motor(1:0)" orien="R0" />
        <instance x="896" y="192" name="XLXI_15" orien="R0">
        </instance>
    </sheet>
</drawing>