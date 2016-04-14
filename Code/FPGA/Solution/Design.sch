<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="clk" />
        <signal name="SPI_MOSI" />
        <signal name="SPI_MISO" />
        <signal name="SPI_SS" />
        <signal name="SPI_Clk" />
        <signal name="DataBus(7:0)" />
        <signal name="DataBus(11:0)" />
        <signal name="motor(1:0)" />
        <signal name="XLXN_89" />
        <signal name="AdrBus(3:0)" />
        <signal name="XLXN_132(1:0)" />
        <signal name="encoder(0)" />
        <signal name="encoder(1)" />
        <signal name="AdrBus(3)" />
        <signal name="XLXN_138(15:0)" />
        <signal name="seg(0:7)" />
        <signal name="Enable(3:0)" />
        <signal name="XLXN_140" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="SPI_MOSI" />
        <port polarity="Output" name="SPI_MISO" />
        <port polarity="Input" name="SPI_SS" />
        <port polarity="Input" name="SPI_Clk" />
        <port polarity="Output" name="motor(1:0)" />
        <port polarity="Input" name="encoder(0)" />
        <port polarity="Input" name="encoder(1)" />
        <port polarity="Output" name="seg(0:7)" />
        <port polarity="Output" name="Enable(3:0)" />
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
        <blockdef name="MultiplexDisplay">
            <timestamp>2016-4-14T14:10:0</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="PositionsModul">
            <timestamp>2016-4-14T14:43:39</timestamp>
            <line x2="0" y1="32" y2="32" x1="64" />
            <rect width="64" x="0" y="84" height="24" />
            <line x2="0" y1="96" y2="96" x1="64" />
            <rect width="64" x="0" y="148" height="24" />
            <line x2="0" y1="160" y2="160" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="256" x="64" y="-192" height="384" />
        </blockdef>
        <blockdef name="Motor_Interface">
            <timestamp>2016-4-14T14:47:41</timestamp>
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="256" x="64" y="-128" height="248" />
            <rect width="64" x="0" y="-60" height="24" />
            <line x2="0" y1="-48" y2="-48" x1="64" />
            <rect width="64" x="0" y="-12" height="24" />
            <line x2="0" y1="0" y2="0" x1="64" />
            <line x2="0" y1="48" y2="48" x1="64" />
            <line x2="0" y1="96" y2="96" x1="64" />
        </blockdef>
        <blockdef name="pwm_driver">
            <timestamp>2016-4-14T14:50:53</timestamp>
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="0" y1="16" y2="16" x1="64" />
            <rect width="64" x="0" y="-60" height="24" />
            <line x2="0" y1="-112" y2="-112" x1="64" />
            <rect width="64" x="0" y="-124" height="24" />
            <line x2="0" y1="-48" y2="-48" x1="64" />
            <rect width="256" x="64" y="-192" height="240" />
        </blockdef>
        <block symbolname="SPI_Slave3" name="XLXI_21">
            <blockpin signalname="clk" name="Clk" />
            <blockpin signalname="SPI_Clk" name="SClk" />
            <blockpin signalname="SPI_SS" name="SS" />
            <blockpin signalname="SPI_MOSI" name="MOSI" />
            <blockpin signalname="DataBus(11:0)" name="DataBus(11:0)" />
            <blockpin signalname="SPI_MISO" name="MISO" />
            <blockpin signalname="AdrBus(3:0)" name="AdrBus(3:0)" />
            <blockpin signalname="AdrBus(3)" name="WE" />
        </block>
        <block symbolname="MultiplexDisplay" name="XLXI_23">
            <blockpin signalname="clk" name="Clk_50MHz" />
            <blockpin signalname="XLXN_138(15:0)" name="Bcd(15:0)" />
            <blockpin signalname="seg(0:7)" name="Seg(1:8)" />
            <blockpin signalname="Enable(3:0)" name="An(3:0)" />
        </block>
        <block symbolname="PositionsModul" name="XLXI_24">
            <blockpin signalname="clk" name="Clk" />
            <blockpin signalname="encoder(0)" name="Encoder1" />
            <blockpin signalname="encoder(1)" name="Encoder2" />
            <blockpin signalname="AdrBus(3)" name="WE" />
            <blockpin signalname="AdrBus(3:0)" name="AdrBus(3:0)" />
            <blockpin signalname="DataBus(11:0)" name="DataBus(11:0)" />
            <blockpin signalname="XLXN_138(15:0)" name="Bcd(15:0)" />
        </block>
        <block symbolname="Motor_Interface" name="XLXI_25">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="XLXN_89" name="pwm" />
            <blockpin signalname="AdrBus(3)" name="WE" />
            <blockpin signalname="AdrBus(3:0)" name="AdrBus(3:0)" />
            <blockpin signalname="XLXN_132(1:0)" name="DataBus(1:0)" />
            <blockpin signalname="motor(1:0)" name="motor(1:0)" />
        </block>
        <block symbolname="pwm_driver" name="XLXI_26">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="AdrBus(3)" name="WE" />
            <blockpin signalname="DataBus(7:0)" name="DataBus(7:0)" />
            <blockpin signalname="AdrBus(3:0)" name="AdrBus(3:0)" />
            <blockpin signalname="XLXN_89" name="pwm" />
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
        <branch name="clk">
            <wire x2="368" y1="176" y2="176" x1="224" />
            <wire x2="368" y1="176" y2="736" x1="368" />
            <wire x2="1280" y1="176" y2="176" x1="368" />
        </branch>
        <iomarker fontsize="28" x="768" y="736" name="SPI_MISO" orien="R0" />
        <branch name="DataBus(7:0)">
            <wire x2="1280" y1="288" y2="288" x1="1056" />
        </branch>
        <bustap x2="1056" y1="288" y2="288" x1="960" />
        <branch name="motor(1:0)">
            <wire x2="1712" y1="736" y2="736" x1="1664" />
        </branch>
        <instance x="368" y="960" name="XLXI_21" orien="R0">
        </instance>
        <iomarker fontsize="28" x="224" y="176" name="clk" orien="R180" />
        <branch name="DataBus(11:0)">
            <wire x2="960" y1="928" y2="928" x1="752" />
            <wire x2="960" y1="928" y2="992" x1="960" />
            <wire x2="960" y1="992" y2="1648" x1="960" />
            <wire x2="1280" y1="1648" y2="1648" x1="960" />
            <wire x2="960" y1="288" y2="928" x1="960" />
        </branch>
        <bustap x2="1056" y1="992" y2="992" x1="960" />
        <branch name="XLXN_132(1:0)">
            <wire x2="1216" y1="992" y2="992" x1="1056" />
            <wire x2="1280" y1="832" y2="832" x1="1216" />
            <wire x2="1216" y1="832" y2="992" x1="1216" />
        </branch>
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1200" y="1328" type="branch" />
            <wire x2="1248" y1="1328" y2="1328" x1="1200" />
            <wire x2="1280" y1="1328" y2="1328" x1="1248" />
            <wire x2="1280" y1="928" y2="928" x1="1248" />
            <wire x2="1248" y1="928" y2="1200" x1="1248" />
            <wire x2="1248" y1="1200" y2="1328" x1="1248" />
            <wire x2="1696" y1="1200" y2="1200" x1="1248" />
            <wire x2="1696" y1="1200" y2="1264" x1="1696" />
            <wire x2="1840" y1="1264" y2="1264" x1="1696" />
        </branch>
        <branch name="encoder(0)">
            <wire x2="1280" y1="1392" y2="1392" x1="1264" />
        </branch>
        <branch name="encoder(1)">
            <wire x2="1280" y1="1456" y2="1456" x1="1264" />
        </branch>
        <iomarker fontsize="28" x="1264" y="1392" name="encoder(0)" orien="R180" />
        <iomarker fontsize="28" x="1264" y="1456" name="encoder(1)" orien="R180" />
        <branch name="XLXN_89">
            <wire x2="1680" y1="448" y2="448" x1="1248" />
            <wire x2="1248" y1="448" y2="736" x1="1248" />
            <wire x2="1280" y1="736" y2="736" x1="1248" />
            <wire x2="1680" y1="176" y2="176" x1="1664" />
            <wire x2="1680" y1="176" y2="448" x1="1680" />
        </branch>
        <iomarker fontsize="28" x="1712" y="736" name="motor(1:0)" orien="R0" />
        <instance x="1840" y="1360" name="XLXI_23" orien="R0">
        </instance>
        <branch name="XLXN_138(15:0)">
            <wire x2="1840" y1="1328" y2="1328" x1="1664" />
        </branch>
        <branch name="seg(0:7)">
            <wire x2="2256" y1="1264" y2="1264" x1="2224" />
        </branch>
        <iomarker fontsize="28" x="2256" y="1264" name="seg(0:7)" orien="R0" />
        <branch name="Enable(3:0)">
            <wire x2="2256" y1="1328" y2="1328" x1="2224" />
        </branch>
        <iomarker fontsize="28" x="2256" y="1328" name="Enable(3:0)" orien="R0" />
        <branch name="AdrBus(3:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1056" y="1280" type="branch" />
            <wire x2="1152" y1="864" y2="864" x1="752" />
            <wire x2="1152" y1="864" y2="1280" x1="1152" />
            <wire x2="1056" y1="1280" y2="1584" x1="1056" />
            <wire x2="1280" y1="1584" y2="1584" x1="1056" />
            <wire x2="1152" y1="1280" y2="1280" x1="1056" />
            <wire x2="1280" y1="224" y2="224" x1="1152" />
            <wire x2="1152" y1="224" y2="784" x1="1152" />
            <wire x2="1280" y1="784" y2="784" x1="1152" />
            <wire x2="1152" y1="784" y2="864" x1="1152" />
        </branch>
        <instance x="1280" y="1488" name="XLXI_24" orien="R0">
        </instance>
        <instance x="1280" y="832" name="XLXI_25" orien="R0">
        </instance>
        <instance x="1280" y="336" name="XLXI_26" orien="R0">
        </instance>
        <branch name="AdrBus(3)">
            <wire x2="768" y1="992" y2="992" x1="752" />
            <wire x2="768" y1="992" y2="1168" x1="768" />
            <wire x2="1024" y1="1168" y2="1168" x1="768" />
            <wire x2="1024" y1="1168" y2="1520" x1="1024" />
            <wire x2="1280" y1="1520" y2="1520" x1="1024" />
            <wire x2="1232" y1="1168" y2="1168" x1="1024" />
            <wire x2="1280" y1="352" y2="352" x1="1232" />
            <wire x2="1232" y1="352" y2="880" x1="1232" />
            <wire x2="1280" y1="880" y2="880" x1="1232" />
            <wire x2="1232" y1="880" y2="1168" x1="1232" />
        </branch>
    </sheet>
</drawing>