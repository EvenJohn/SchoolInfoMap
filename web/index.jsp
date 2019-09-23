<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/9/22 0022
  Time: 上午 11:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>高校信息展示系统</title>
    <link rel="stylesheet" href="css/ol.css" type="text/css">
    <link rel="stylesheet" href="css/ol3-layerswitcher.css" type="text/css">
    <script src="js/ol.js"></script>
    <script src="js/ol3-layerswitcher.js"></script>
    <style type="text/css">
      body,html {
        width: 100%;
        height: 100%;
        margin: 0;
        overflow: hidden;
      }
      header {
        height:15%;
      }
      #map {
        width: 100%;
        height: 100%;
        overflow: hidden;
        margin: 0;
      }
      #scalebar{
        position:absolute;
        bottom:0px;
        left:165px;
      }
      </style>
  </head>
  <body>
  <header>SchoolInfoMap</header>
  <div  id="map"></div>
  <div id="scalebar"></div>
  </body>
</html>
<script type="text/javascript">

  //地图初始化
    var map = new ol.Map({
        target: 'map',
        layers:[
            new ol.layer.Tile({
                title:"OSM",
                source: new ol.source.OSM()
            }),
        ],
        view: new ol.View({
            center: ol.proj.fromLonLat([116.5, 39.5]),
            zoom: 4
        })
    });

    //添加控件
    map.addControl(new ol.control.OverviewMap({
        collapsed: false
    }));
    var scaleline=new ol.control.ScaleLine();
    //将比例尺绑定于div中
    scaleline.setTarget("scalebar");
    map.addControl(scaleline);
    map.addControl(new ol.control.ZoomSlider());
    //添加图层控制控件
    var layerSwitcher = new ol.control.LayerSwitcher();
    map.addControl(layerSwitcher);
</script>