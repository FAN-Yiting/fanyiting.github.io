var options = {
  "xAxis": [
    {
      "type": "category",
      "categories": [
        "莺时TOKI",
        "六厘舍",
        "眷唐风",
        "鮨一日本料理",
        "聚龙川和食料理",
        "花潮",
        "森空和食",
        "食堂时尚料理",
        "江左尚白",
        "三巡- 酒与烧肉",
        "勝上| 海鲜丼饭",
        "勝居酒屋",
        "匠和风精致料理",
        "天和割烹料理",
        "酒洲日式料理",
        "鳄梨先森",
        "喜之秋铁板烧",
        "奈町",
        "猫不吃渔烤肉",
        "深夜食堂见世"
      ],
      "labels": {
        "format": "{value}"
      },
      "index": 0,
      "isX": true
    }
  ],
  "series": [
    {
      "name": "       好评占比",
      "data": [
        97.8,
        93.9,
        93.3,
        92.8,
        92.5,
        91.5,
        93.7,
        96,
        91.3,
        92.7,
        94.7,
        86.8,
        90.9,
        91.8,
        97.6,
        92,
        91.7,
        86.1,
        94.9,
        87.9
      ],
      "_colorIndex": 0
    },
    {
      "name": "中评占比",
      "data": [
        1.6,
        5.3,
        4.9,
        4.9,
        4.6,
        4.6,
        4.8,
        3,
        4.4,
        6.3,
        4.5,
        7.8,
        5.9,
        3.7,
        0,
        5.6,
        4.2,
        10.2,
        3.7,
        8.5
      ],
      "_colorIndex": 1
    },
    {
      "name": "差评占比",
      "data": [
        0.5,
        0.9,
        1.8,
        2.3,
        2.9,
        3.9,
        1.5,
        1,
        4.3,
        1,
        0.8,
        5.3,
        3.2,
        4.5,
        2.4,
        2.4,
        4.2,
        3.6,
        1.4,
        3.6
      ],
      "_colorIndex": 2
    }
  ],
  "yAxis": [
    {
      "title": {
        "text": "占比（%）",
        "style": {
          "fontFamily": "\"微软雅黑\", Arial, Helvetica, sans-serif",
          "color": "#ff1744",
          "fontSize": "12px",
          "fontWeight": "bold",
          "fontStyle": "normal"
        }
      },
      "index": 0
    }
  ],
  "chart": {
    "style": {
      "fontFamily": "\"微软雅黑\", Arial, Helvetica, sans-serif",
      "color": "#333",
      "fontSize": "12px",
      "fontWeight": "normal",
      "fontStyle": "normal"
    },
    "type": "column"
  },
  "title": {
    "text": "部分餐厅顾客评价（好/中/差评占比）"
  },
  "subtitle": {
    "text": "综合评分大于4.85的日式餐厅"
  },
  "colors": [
    "#7cb5ec",
    "#434348",
    "#90ed7d",
    "#f7a35c",
    "#8085e9",
    "#f15c80",
    "#e4d354",
    "#2b908f",
    "#f45b5b",
    "#91e8e1"
  ],
  "plotOptions": {
    "series": {
      "stacking": "percent",
      "animation": false
    }
  }
}