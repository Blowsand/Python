
#提取页面信息

#!/usr/bin/python
#-*- coding:utf-8 -*-

import re

class Tool:

    def __init__(self, page):
        pass
        
    def getPageNum(self, page):
        pattern = re.compile(u'<div class="total">.*?\u5171(.*?\u9875)', re.S)
        result = re.search(pattern, page)
        if result:
            print ('找到了共多少页')
            pageNum = result.group(1).strip()
            print ('共', pageNum,'页')
            return pageNum
            
    def getGoodsInfo(self, page):
        #u'\u8ba2\u5355\u53f7'是订单号的编号
        pattern = re.compile(u'dealtime.*?>(.*?)</span>',re.S)
        result = re.findall(pattern, page)
        for item in result:
            print ('----------------------')
            print ('购买日期：'，)
