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
        <signal name="SPI_MOSI" />
        <signal name="SPI_Clk" />
        <signal name="SPI_SS" />
        <signal name="SPI_MISO" />
        <port polarity="Input" name="SPI_MOSI" />
        <port polarity="Input" name="SPI_Clk" />
        <port polarity="Input" name="SPI_SS" />
        <port polarity="Output" name="SPI_MISO" />
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
        <block symbolname="pwm_driver" name="XLXI_7">
            <blockpin name="clk" />
            <blockpin signalname="XLXN_67" name="enable" />
            <blockpin name="data(7:0)" />
            <blockpin signalname="XLXN_17" name="pwm" />
        </block>
        <block symbolname="Motor_Interface" name="XLXI_9">
            <blockpin signalname="XLXN_17" name="pwm" />
            <blockpin name="motor(1:0)" />
            <blockpin name="motor_State(1:0)" />
        </block>
        <block symbolname="constant" name="XLXI_15">
            <attr value="1" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_67" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="XLXN_17">
            <wire x2="1088" y1="352" y2="352" x1="1072" />
            <wire x2="1328" y1="224" y2="224" x1="1088" />
            <wire x2="1088" y1="224" y2="352" x1="1088" />
        </branch>
        <branch name="XLXN_67">
            <wire x2="688" y1="224" y2="224" x1="608" />
        </branch>
        <instance x="688" y="320" name="XLXI_7" orien="R0">
        </instance>
        <instance x="1328" y="320" name="XLXI_9" orien="R0">
        </instance>
        <instance x="464" y="192" name="XLXI_15" orien="R0">
        </instance>
        <branch name="SPI_Clk">
            <wire x2="1632" y1="1648" y2="1648" x1="1616" />
            <wire x2="1680" y1="1648" y2="1648" x1="1632" />
        </branch>
        <branch name="SPI_SS">
            <wire x2="1616" y1="1584" y2="1584" x1="1600" />
            <wire x2="1680" y1="1584" y2="1584" x1="1616" />
        </branch>
        <branch name="SPI_MISO">
            <wire x2="2144" y1="816" y2="816" x1="2064" />
            <wire x2="2160" y1="816" y2="816" x1="2144" />
        </branch>
        <iomarker fontsize="28" x="1616" y="1648" name="SPI_Clk" orien="R180" />
        <iomarker fontsize="28" x="1600" y="1584" name="SPI_SS" orien="R180" />
        <iomarker fontsize="28" x="2160" y="816" name="SPI_MISO" orien="R0" />
        <iomarker fontsize="28" x="1072" y="880" name="SPI_MOSI" orien="R180" />
        <branch name="SPI_MOSI">
            <wire x2="1680" y1="880" y2="880" x1="1072" />
        </branch>
    </sheet>
</drawing>