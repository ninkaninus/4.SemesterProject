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
        <signal name="Position(7:0)" />
        <signal name="An(3:0)" />
        <signal name="XLXN_11(15:0)" />
        <signal name="Seg(1:8)" />
        <port polarity="Input" name="Clk" />
        <port polarity="Input" name="Encoder1" />
        <port polarity="Input" name="Encoder2" />
        <port polarity="Output" name="Position(7:0)" />
        <port polarity="Output" name="An(3:0)" />
        <port polarity="Output" name="Seg(1:8)" />
        <blockdef name="PositionsModul">
            <timestamp>2016-4-7T10:34:59</timestamp>
            <rect width="64" x="320" y="20" height="24" />
            <line x2="384" y1="32" y2="32" x1="320" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="256" x="64" y="-192" height="256" />
        </blockdef>
        <blockdef name="MultiplexDisplay">
            <timestamp>2016-4-7T9:47:5</timestamp>
            <rect width="64" x="320" y="20" height="24" />
            <line x2="384" y1="32" y2="32" x1="320" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="256" x="64" y="-192" height="256" />
        </blockdef>
        <block symbolname="PositionsModul" name="XLXI_1">
            <blockpin signalname="Clk" name="Clk" />
            <blockpin signalname="Encoder1" name="Encoder1" />
            <blockpin signalname="Encoder2" name="Encoder2" />
            <blockpin signalname="Position(7:0)" name="Position(7:0)" />
            <blockpin signalname="XLXN_11(15:0)" name="Bcd(15:0)" />
        </block>
        <block symbolname="MultiplexDisplay" name="XLXI_2">
            <blockpin signalname="Clk" name="Clk_50MHz" />
            <blockpin signalname="XLXN_11(15:0)" name="Bcd(15:0)" />
            <blockpin signalname="Seg(1:8)" name="Seg(1:8)" />
            <blockpin signalname="An(3:0)" name="An(3:0)" />
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
        <branch name="Position(7:0)">
            <wire x2="1024" y1="896" y2="896" x1="992" />
        </branch>
        <iomarker fontsize="28" x="1024" y="896" name="Position(7:0)" orien="R0" />
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
        <branch name="XLXN_11(15:0)">
            <wire x2="1200" y1="1088" y2="1088" x1="992" />
            <wire x2="1200" y1="976" y2="1088" x1="1200" />
            <wire x2="1408" y1="976" y2="976" x1="1200" />
        </branch>
        <branch name="Seg(1:8)">
            <wire x2="1824" y1="1104" y2="1104" x1="1792" />
        </branch>
        <iomarker fontsize="28" x="1824" y="1104" name="Seg(1:8)" orien="R0" />
    </sheet>
</drawing>