<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_40" />
        <signal name="XLXN_44(7:0)" />
        <signal name="XLXN_51" />
        <signal name="XLXN_52" />
        <signal name="XLXN_53" />
        <signal name="XLXN_64" />
        <signal name="SPI_MISO" />
        <signal name="XLXN_69" />
        <signal name="XLXN_17" />
        <signal name="motor(1:0)" />
        <signal name="SPI_MOSI" />
        <signal name="XLXN_49(7:0)" />
        <signal name="XLXN_74" />
        <signal name="clk" />
        <signal name="SPI_SS" />
        <signal name="SPI_Clk" />
        <signal name="btn(1:0)" />
        <signal name="XLXN_67" />
        <signal name="XLXN_81(0:0)" />
        <signal name="XLXN_82" />
        <signal name="XLXN_83(3:0)" />
        <signal name="XLXN_84(7:0)" />
        <signal name="XLXN_87(7:0)" />
        <signal name="XLXN_88(7:0)" />
        <signal name="XLXN_89(7:0)" />
        <signal name="XLXN_90" />
        <signal name="XLXN_92(7:0)" />
        <signal name="XLXN_93" />
        <port polarity="Output" name="SPI_MISO" />
        <port polarity="Output" name="motor(1:0)" />
        <port polarity="Input" name="SPI_MOSI" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="SPI_SS" />
        <port polarity="Input" name="SPI_Clk" />
        <port polarity="Input" name="btn(1:0)" />
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
        <blockdef name="SPI">
            <timestamp>2016-4-7T15:44:8</timestamp>
            <line x2="0" y1="672" y2="672" x1="64" />
            <line x2="0" y1="608" y2="608" x1="64" />
            <line x2="0" y1="480" y2="480" x1="64" />
            <rect width="64" x="0" y="532" height="24" />
            <line x2="0" y1="544" y2="544" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="96" y2="96" x1="320" />
            <line x2="384" y1="176" y2="176" x1="320" />
            <rect width="64" x="320" y="164" height="24" />
            <rect width="256" x="64" y="-192" height="896" />
        </blockdef>
        <blockdef name="constant">
            <timestamp>2006-1-1T10:10:10</timestamp>
            <rect width="112" x="0" y="0" height="64" />
            <line x2="112" y1="32" y2="32" x1="144" />
        </blockdef>
        <blockdef name="RAM16_8">
            <timestamp>2016-4-7T17:36:18</timestamp>
            <rect width="512" x="32" y="32" height="268" />
            <line x2="32" y1="80" y2="80" style="linewidth:W" x1="0" />
            <line x2="32" y1="112" y2="112" style="linewidth:W" x1="0" />
            <line x2="32" y1="208" y2="208" style="linewidth:W" x1="0" />
            <line x2="32" y1="272" y2="272" x1="0" />
            <line x2="544" y1="80" y2="80" style="linewidth:W" x1="576" />
        </blockdef>
        <blockdef name="SPI_Engine">
            <timestamp>2016-4-7T17:52:20</timestamp>
            <rect width="528" x="64" y="-384" height="384" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-256" y2="-256" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-76" height="24" />
            <line x2="0" y1="-64" y2="-64" x1="64" />
            <line x2="656" y1="-352" y2="-352" x1="592" />
            <line x2="656" y1="-288" y2="-288" x1="592" />
            <line x2="656" y1="-224" y2="-224" x1="592" />
            <rect width="64" x="592" y="-172" height="24" />
            <line x2="656" y1="-160" y2="-160" x1="592" />
            <rect width="64" x="592" y="-108" height="24" />
            <line x2="656" y1="-96" y2="-96" x1="592" />
            <rect width="64" x="592" y="-44" height="24" />
            <line x2="656" y1="-32" y2="-32" x1="592" />
        </blockdef>
        <block symbolname="pwm_driver" name="XLXI_7">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="XLXN_67" name="enable" />
            <blockpin signalname="XLXN_49(7:0)" name="data(7:0)" />
            <blockpin signalname="XLXN_17" name="pwm" />
        </block>
        <block symbolname="Motor_Interface" name="XLXI_9">
            <blockpin signalname="XLXN_17" name="pwm" />
            <blockpin signalname="motor(1:0)" name="motor(1:0)" />
            <blockpin signalname="btn(1:0)" name="motor_State(1:0)" />
        </block>
        <block symbolname="SPI" name="XLXI_10">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="SPI_MOSI" name="mosi" />
            <blockpin signalname="SPI_SS" name="ss" />
            <blockpin signalname="SPI_Clk" name="sclk" />
            <blockpin signalname="XLXN_93" name="dataToSendRdy" />
            <blockpin signalname="XLXN_89(7:0)" name="dataToSend(7:0)" />
            <blockpin signalname="SPI_MISO" name="miso" />
            <blockpin signalname="XLXN_90" name="dataReceivedRdy" />
            <blockpin signalname="XLXN_92(7:0)" name="dataReceived(7:0)" />
        </block>
        <block symbolname="constant" name="XLXI_15">
            <attr value="1" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_67" name="O" />
        </block>
        <block symbolname="RAM16_8" name="XLXI_23">
            <blockpin signalname="XLXN_83(3:0)" name="addra(3:0)" />
            <blockpin signalname="XLXN_88(7:0)" name="dina(7:0)" />
            <blockpin signalname="XLXN_81(0:0)" name="wea(0:0)" />
            <blockpin signalname="XLXN_82" name="clka" />
            <blockpin signalname="XLXN_87(7:0)" name="douta(7:0)" />
        </block>
        <block symbolname="SPI_Engine" name="XLXI_24">
            <blockpin signalname="clk" name="Clk" />
            <blockpin signalname="XLXN_90" name="SPI_Received_Data_Rdy" />
            <blockpin signalname="XLXN_92(7:0)" name="SPI_Received_Data(7:0)" />
            <blockpin signalname="XLXN_87(7:0)" name="RAM_Data_In(7:0)" />
            <blockpin signalname="XLXN_93" name="SPI_Transmit_Data_Rdy" />
            <blockpin signalname="XLXN_81(0:0)" name="RAM_WE" />
            <blockpin signalname="XLXN_82" name="RAM_Clk" />
            <blockpin signalname="XLXN_89(7:0)" name="SPI_Transmit_Data(7:0)" />
            <blockpin signalname="XLXN_83(3:0)" name="RAM_Address(3:0)" />
            <blockpin signalname="XLXN_88(7:0)" name="RAM_Data_Out(7:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="SPI_MISO">
            <wire x2="1168" y1="576" y2="576" x1="1072" />
        </branch>
        <branch name="XLXN_17">
            <wire x2="1088" y1="352" y2="352" x1="1072" />
            <wire x2="1328" y1="224" y2="224" x1="1088" />
            <wire x2="1088" y1="224" y2="352" x1="1088" />
        </branch>
        <branch name="motor(1:0)">
            <wire x2="1744" y1="224" y2="224" x1="1712" />
            <wire x2="1744" y1="160" y2="224" x1="1744" />
            <wire x2="1824" y1="160" y2="160" x1="1744" />
        </branch>
        <branch name="SPI_MOSI">
            <wire x2="688" y1="640" y2="640" x1="624" />
        </branch>
        <branch name="clk">
            <wire x2="480" y1="352" y2="352" x1="368" />
            <wire x2="480" y1="352" y2="432" x1="480" />
            <wire x2="480" y1="432" y2="576" x1="480" />
            <wire x2="688" y1="576" y2="576" x1="480" />
            <wire x2="1440" y1="432" y2="432" x1="480" />
            <wire x2="1440" y1="432" y2="560" x1="1440" />
            <wire x2="1568" y1="560" y2="560" x1="1440" />
            <wire x2="688" y1="160" y2="160" x1="480" />
            <wire x2="480" y1="160" y2="352" x1="480" />
        </branch>
        <branch name="SPI_SS">
            <wire x2="688" y1="1344" y2="1344" x1="608" />
        </branch>
        <branch name="SPI_Clk">
            <wire x2="688" y1="1408" y2="1408" x1="624" />
        </branch>
        <branch name="btn(1:0)">
            <wire x2="1328" y1="352" y2="352" x1="1296" />
        </branch>
        <branch name="XLXN_67">
            <wire x2="688" y1="224" y2="224" x1="208" />
        </branch>
        <instance x="688" y="320" name="XLXI_7" orien="R0">
        </instance>
        <instance x="1328" y="320" name="XLXI_9" orien="R0">
        </instance>
        <instance x="688" y="736" name="XLXI_10" orien="R0">
        </instance>
        <instance x="64" y="192" name="XLXI_15" orien="R0">
        </instance>
        <iomarker fontsize="28" x="624" y="640" name="SPI_MOSI" orien="R180" />
        <iomarker fontsize="28" x="1168" y="576" name="SPI_MISO" orien="R0" />
        <iomarker fontsize="28" x="1824" y="160" name="motor(1:0)" orien="R0" />
        <iomarker fontsize="28" x="368" y="352" name="clk" orien="R180" />
        <iomarker fontsize="28" x="608" y="1344" name="SPI_SS" orien="R180" />
        <iomarker fontsize="28" x="624" y="1408" name="SPI_Clk" orien="R180" />
        <iomarker fontsize="28" x="1296" y="352" name="btn(1:0)" orien="R180" />
        <instance x="1568" y="912" name="XLXI_24" orien="R0">
        </instance>
        <instance x="2608" y="480" name="XLXI_23" orien="R0">
        </instance>
        <branch name="XLXN_81(0:0)">
            <wire x2="2416" y1="624" y2="624" x1="2224" />
            <wire x2="2416" y1="624" y2="688" x1="2416" />
            <wire x2="2608" y1="688" y2="688" x1="2416" />
        </branch>
        <branch name="XLXN_82">
            <wire x2="2400" y1="688" y2="688" x1="2224" />
            <wire x2="2400" y1="688" y2="752" x1="2400" />
            <wire x2="2608" y1="752" y2="752" x1="2400" />
        </branch>
        <branch name="XLXN_83(3:0)">
            <wire x2="2352" y1="816" y2="816" x1="2224" />
            <wire x2="2352" y1="560" y2="816" x1="2352" />
            <wire x2="2608" y1="560" y2="560" x1="2352" />
        </branch>
        <branch name="XLXN_87(7:0)">
            <wire x2="1568" y1="848" y2="848" x1="1488" />
            <wire x2="1488" y1="848" y2="960" x1="1488" />
            <wire x2="3264" y1="960" y2="960" x1="1488" />
            <wire x2="3264" y1="560" y2="560" x1="3184" />
            <wire x2="3264" y1="560" y2="960" x1="3264" />
        </branch>
        <branch name="XLXN_88(7:0)">
            <wire x2="2480" y1="880" y2="880" x1="2224" />
            <wire x2="2608" y1="592" y2="592" x1="2480" />
            <wire x2="2480" y1="592" y2="880" x1="2480" />
        </branch>
        <branch name="XLXN_89(7:0)">
            <wire x2="1136" y1="912" y2="912" x1="1072" />
            <wire x2="1136" y1="912" y2="1040" x1="1136" />
            <wire x2="2288" y1="1040" y2="1040" x1="1136" />
            <wire x2="2288" y1="752" y2="752" x1="2224" />
            <wire x2="2288" y1="752" y2="1040" x1="2288" />
        </branch>
        <branch name="XLXN_90">
            <wire x2="1312" y1="832" y2="832" x1="1072" />
            <wire x2="1312" y1="656" y2="832" x1="1312" />
            <wire x2="1568" y1="656" y2="656" x1="1312" />
        </branch>
        <branch name="XLXN_49(7:0)">
            <wire x2="688" y1="288" y2="288" x1="656" />
        </branch>
        <branch name="XLXN_92(7:0)">
            <wire x2="688" y1="1280" y2="1280" x1="672" />
            <wire x2="672" y1="1280" y2="1472" x1="672" />
            <wire x2="1392" y1="1472" y2="1472" x1="672" />
            <wire x2="1568" y1="752" y2="752" x1="1392" />
            <wire x2="1392" y1="752" y2="1472" x1="1392" />
        </branch>
        <branch name="XLXN_93">
            <wire x2="2304" y1="448" y2="448" x1="672" />
            <wire x2="2304" y1="448" y2="560" x1="2304" />
            <wire x2="672" y1="448" y2="1216" x1="672" />
            <wire x2="688" y1="1216" y2="1216" x1="672" />
            <wire x2="2304" y1="560" y2="560" x1="2224" />
        </branch>
    </sheet>
</drawing>