<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="Clk" />
        <signal name="Encoder1" />
        <signal name="Encoder2" />
        <signal name="An(3:0)" />
        <signal name="Seg(1:8)" />
        <signal name="Tilt_Hall" />
        <signal name="Pan_Hall" />
        <signal name="Hall_sens(1:0)" />
        <port polarity="Input" name="Clk" />
        <port polarity="Input" name="Encoder1" />
        <port polarity="Input" name="Encoder2" />
        <port polarity="Output" name="An(3:0)" />
        <port polarity="Output" name="Seg(1:8)" />
        <port polarity="Output" name="Tilt_Hall" />
        <port polarity="Output" name="Pan_Hall" />
        <port polarity="Input" name="Hall_sens(1:0)" />
        <blockdef name="PositionsModul">
            <timestamp>2016-4-8T8:37:13</timestamp>
            <rect width="64" x="320" y="20" height="24" />
            <line x2="384" y1="32" y2="32" x1="320" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="256" x="64" y="-192" height="256" />
        </blockdef>
        <blockdef name="MultiplexDisplay">
            <timestamp>2016-4-8T8:39:5</timestamp>
            <rect width="64" x="320" y="20" height="24" />
            <line x2="384" y1="32" y2="32" x1="320" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="256" x="64" y="-192" height="256" />
        </blockdef>
        <blockdef name="Hall_sensor">
            <timestamp>2016-4-14T13:57:6</timestamp>
            <rect width="64" x="0" y="20" height="24" />
            <line x2="0" y1="32" y2="32" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="256" x="64" y="-128" height="192" />
        </blockdef>
        <blockdef name="SikkerhedsFeature">
            <timestamp>2016-4-14T14:27:32</timestamp>
            <rect width="64" x="0" y="148" height="24" />
            <line x2="0" y1="160" y2="160" x1="64" />
            <rect width="64" x="0" y="212" height="24" />
            <line x2="0" y1="224" y2="224" x1="64" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="256" x="64" y="-64" height="320" />
        </blockdef>
        <block symbolname="PositionsModul" name="XLXI_1">
            <blockpin signalname="Clk" name="Clk" />
            <blockpin signalname="Encoder1" name="Encoder1" />
            <blockpin signalname="Encoder2" name="Encoder2" />
            <blockpin name="Bcd(15:0)" />
        </block>
        <block symbolname="MultiplexDisplay" name="XLXI_2">
            <blockpin signalname="Clk" name="Clk_50MHz" />
            <blockpin name="Bcd(15:0)" />
            <blockpin signalname="Seg(1:8)" name="Seg(1:8)" />
            <blockpin signalname="An(3:0)" name="An(3:0)" />
        </block>
        <block symbolname="Hall_sensor" name="XLXI_3">
            <blockpin signalname="Pan_Hall" name="Pan_Hall" />
            <blockpin signalname="Tilt_Hall" name="Tilt_Hall" />
            <blockpin signalname="Hall_sens(1:0)" name="Hall_sens(1:0)" />
        </block>
        <block symbolname="SikkerhedsFeature" name="XLXI_5">
            <blockpin name="Motor_Pan_Hall(11:0)" />
            <blockpin name="Motor_Tilt_hall(11:0)" />
            <blockpin name="Stop(1:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="608" y="1056" name="XLXI_1" orien="R0">
        </instance>
        <branch name="Clk">
            <wire x2="608" y1="896" y2="896" x1="576" />
        </branch>
        <iomarker fontsize="28" x="576" y="896" name="Clk" orien="R180" />
        <branch name="Encoder1">
            <wire x2="608" y1="960" y2="960" x1="576" />
        </branch>
        <iomarker fontsize="28" x="576" y="960" name="Encoder1" orien="R180" />
        <branch name="Encoder2">
            <wire x2="608" y1="1024" y2="1024" x1="576" />
        </branch>
        <iomarker fontsize="28" x="576" y="1024" name="Encoder2" orien="R180" />
        <instance x="1408" y="1072" name="XLXI_2" orien="R0">
        </instance>
        <branch name="Clk">
            <wire x2="1408" y1="912" y2="912" x1="1376" />
        </branch>
        <iomarker fontsize="28" x="1376" y="912" name="Clk" orien="R180" />
        <branch name="An(3:0)">
            <wire x2="1824" y1="1040" y2="1040" x1="1792" />
        </branch>
        <iomarker fontsize="28" x="1824" y="1040" name="An(3:0)" orien="R0" />
        <branch name="Seg(1:8)">
            <wire x2="1824" y1="1104" y2="1104" x1="1792" />
        </branch>
        <iomarker fontsize="28" x="1824" y="1104" name="Seg(1:8)" orien="R0" />
        <instance x="480" y="1456" name="XLXI_3" orien="R0">
        </instance>
        <branch name="Tilt_Hall">
            <wire x2="880" y1="1424" y2="1424" x1="864" />
            <wire x2="896" y1="1424" y2="1424" x1="880" />
        </branch>
        <branch name="Pan_Hall">
            <wire x2="880" y1="1360" y2="1360" x1="864" />
            <wire x2="896" y1="1360" y2="1360" x1="880" />
        </branch>
        <iomarker fontsize="28" x="896" y="1360" name="Pan_Hall" orien="R0" />
        <iomarker fontsize="28" x="896" y="1424" name="Tilt_Hall" orien="R0" />
        <branch name="Hall_sens(1:0)">
            <wire x2="464" y1="1488" y2="1488" x1="448" />
            <wire x2="480" y1="1488" y2="1488" x1="464" />
        </branch>
        <iomarker fontsize="28" x="448" y="1488" name="Hall_sens(1:0)" orien="R180" />
        <instance x="1488" y="1360" name="XLXI_5" orien="R0">
        </instance>
    </sheet>
</drawing>