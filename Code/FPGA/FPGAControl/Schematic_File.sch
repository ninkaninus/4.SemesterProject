<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="clk" />
        <signal name="XLXN_21" />
        <signal name="XLXN_30" />
        <signal name="Hall_sens(1:0)" />
        <signal name="Encoder_Pan(1:0)" />
        <signal name="Encoder_tilt(1:0)" />
        <signal name="XLXN_46(8:0)" />
        <signal name="XLXN_47(10:0)" />
        <signal name="Position(7:0)" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="Hall_sens(1:0)" />
        <port polarity="Input" name="Encoder_Pan(1:0)" />
        <port polarity="Input" name="Encoder_tilt(1:0)" />
        <port polarity="Output" name="Position(7:0)" />
        <blockdef name="Motor_Pan">
            <timestamp>2016-4-14T16:52:19</timestamp>
            <rect width="64" x="0" y="148" height="24" />
            <line x2="0" y1="160" y2="160" x1="64" />
            <line x2="0" y1="96" y2="96" x1="64" />
            <line x2="0" y1="32" y2="32" x1="64" />
            <rect width="64" x="464" y="-44" height="24" />
            <line x2="528" y1="-32" y2="-32" x1="464" />
            <rect width="400" x="64" y="-64" height="256" />
        </blockdef>
        <blockdef name="Motor_Tilt">
            <timestamp>2016-4-14T16:52:14</timestamp>
            <rect width="64" x="0" y="84" height="24" />
            <line x2="0" y1="96" y2="96" x1="64" />
            <line x2="0" y1="32" y2="32" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="464" y="-108" height="24" />
            <line x2="528" y1="-96" y2="-96" x1="464" />
            <rect width="400" x="64" y="-128" height="256" />
        </blockdef>
        <blockdef name="SikkerhedsFeature">
            <timestamp>2016-4-14T16:52:8</timestamp>
            <rect width="64" x="0" y="148" height="24" />
            <line x2="0" y1="160" y2="160" x1="64" />
            <rect width="64" x="0" y="212" height="24" />
            <line x2="0" y1="224" y2="224" x1="64" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="256" x="64" y="-64" height="320" />
        </blockdef>
        <blockdef name="Hall_sensor">
            <timestamp>2016-4-14T16:52:2</timestamp>
            <rect width="64" x="0" y="20" height="24" />
            <line x2="0" y1="32" y2="32" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="256" x="64" y="-128" height="192" />
        </blockdef>
        <blockdef name="LED_Blinky">
            <timestamp>2016-4-14T17:7:0</timestamp>
            <rect width="64" x="320" y="84" height="24" />
            <line x2="384" y1="96" y2="96" x1="320" />
            <rect width="64" x="0" y="20" height="24" />
            <line x2="0" y1="32" y2="32" x1="64" />
            <rect width="256" x="64" y="-64" height="192" />
        </blockdef>
        <blockdef name="Clock_scale">
            <timestamp>2016-4-14T18:23:26</timestamp>
            <rect width="64" x="320" y="84" height="24" />
            <line x2="384" y1="96" y2="96" x1="320" />
            <rect width="64" x="320" y="148" height="24" />
            <line x2="384" y1="160" y2="160" x1="320" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="256" x="64" y="-64" height="256" />
        </blockdef>
        <block symbolname="Hall_sensor" name="XLXI_13">
            <blockpin signalname="Hall_sens(1:0)" name="Hall_sens(1:0)" />
            <blockpin signalname="XLXN_21" name="Pan_Hall" />
            <blockpin signalname="XLXN_30" name="Tilt_Hall" />
        </block>
        <block symbolname="SikkerhedsFeature" name="XLXI_8">
            <blockpin signalname="XLXN_47(10:0)" name="Motor_Pan_Hall(10:0)" />
            <blockpin signalname="XLXN_46(8:0)" name="Motor_Tilt_hall(8:0)" />
            <blockpin name="Stop(1:0)" />
        </block>
        <block symbolname="Motor_Pan" name="XLXI_20">
            <blockpin signalname="clk" name="Clk" />
            <blockpin signalname="XLXN_30" name="Sync_Hall" />
            <blockpin signalname="Encoder_Pan(1:0)" name="Encoder_Pan(1:0)" />
            <blockpin signalname="XLXN_46(8:0)" name="Encoder_Register(8:0)" />
        </block>
        <block symbolname="Motor_Tilt" name="XLXI_5">
            <blockpin signalname="clk" name="Clk" />
            <blockpin signalname="XLXN_21" name="Sync_Hall" />
            <blockpin signalname="Encoder_tilt(1:0)" name="Encoder_tilt(1:0)" />
            <blockpin signalname="XLXN_47(10:0)" name="Encoder_Register(10:0)" />
        </block>
        <block symbolname="LED_Blinky" name="XLXI_21">
            <blockpin name="Input(1:0)" />
            <blockpin signalname="Position(7:0)" name="Position(7:0)" />
        </block>
        <block symbolname="Clock_scale" name="XLXI_22">
            <blockpin signalname="clk" name="Clk" />
            <blockpin name="Clk_100hz" />
            <blockpin name="Fake_Encoder_pan(8:0)" />
            <blockpin name="Fake_Encoder_Tilt(10:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="clk">
            <wire x2="1200" y1="128" y2="128" x1="1168" />
        </branch>
        <instance x="384" y="384" name="XLXI_13" orien="R0">
        </instance>
        <branch name="XLXN_21">
            <wire x2="768" y1="256" y2="288" x1="768" />
            <wire x2="1200" y1="256" y2="256" x1="768" />
        </branch>
        <branch name="clk">
            <wire x2="1184" y1="624" y2="624" x1="1168" />
        </branch>
        <branch name="XLXN_30">
            <wire x2="768" y1="352" y2="368" x1="768" />
            <wire x2="976" y1="368" y2="368" x1="768" />
            <wire x2="976" y1="368" y2="688" x1="976" />
            <wire x2="1184" y1="688" y2="688" x1="976" />
        </branch>
        <branch name="Hall_sens(1:0)">
            <wire x2="384" y1="416" y2="416" x1="352" />
        </branch>
        <instance x="2048" y="336" name="XLXI_8" orien="R0">
        </instance>
        <branch name="Encoder_Pan(1:0)">
            <wire x2="1184" y1="752" y2="752" x1="1168" />
        </branch>
        <branch name="Encoder_tilt(1:0)">
            <wire x2="1200" y1="320" y2="320" x1="1168" />
        </branch>
        <instance x="1184" y="592" name="XLXI_20" orien="R0">
        </instance>
        <branch name="XLXN_46(8:0)">
            <wire x2="2048" y1="560" y2="560" x1="1712" />
        </branch>
        <branch name="XLXN_47(10:0)">
            <wire x2="1888" y1="128" y2="128" x1="1728" />
            <wire x2="1888" y1="128" y2="496" x1="1888" />
            <wire x2="2048" y1="496" y2="496" x1="1888" />
        </branch>
        <instance x="1200" y="224" name="XLXI_5" orien="R0">
        </instance>
        <iomarker fontsize="28" x="1168" y="128" name="clk" orien="R180" />
        <iomarker fontsize="28" x="1168" y="624" name="clk" orien="R180" />
        <iomarker fontsize="28" x="352" y="416" name="Hall_sens(1:0)" orien="R180" />
        <iomarker fontsize="28" x="1168" y="752" name="Encoder_Pan(1:0)" orien="R180" />
        <iomarker fontsize="28" x="1168" y="320" name="Encoder_tilt(1:0)" orien="R180" />
        <branch name="clk">
            <wire x2="928" y1="1552" y2="1552" x1="912" />
            <wire x2="944" y1="1552" y2="1552" x1="928" />
        </branch>
        <instance x="1424" y="1648" name="XLXI_21" orien="R0">
        </instance>
        <branch name="Position(7:0)">
            <wire x2="1840" y1="1744" y2="1744" x1="1808" />
        </branch>
        <instance x="944" y="1584" name="XLXI_22" orien="R0">
        </instance>
        <iomarker fontsize="28" x="912" y="1552" name="clk" orien="R180" />
        <iomarker fontsize="28" x="1840" y="1744" name="Position(7:0)" orien="R0" />
    </sheet>
</drawing>