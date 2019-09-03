<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title></title>
    <style type="text/css">
        body {
            margin: 0;
            font-family: "Courier New" !important;
            font-size: 12px;
            -webkit-transform: scale(0.5);
        }
        .content {
            width: 700px;
        }
        .margin-right-10{
            margin-right: 10px;
        }
        .enter-content{
            text-indent: 12px;
            width: 80px;
            border-bottom: 1px dotted #0f0f0f;
            position: relative;
            top: -5px;
        }
        .margin-bottom-5{
            margin-bottom: 5px;
        }
        .box{
            border: 1px solid #0f0f0f;
            padding: 5px;
        }
        .box:first-child{
            margin-bottom: 80px;
        }
        .box-top{
            width: 690px;
            font-size: 12px;
            font-weight: bold;
            margin-top: -8px;
        }
        .box-top-left{
            border: 0.5px solid #0f0f0f;
            height: 30px;
            line-height: 30px;
            padding: 4px;
            border-radius: 5px;
        }
        .text-yellow{
            padding: 5px 0;
            float: right;
        }
        .box-top-right{
            text-align: right;
            margin: 1px 2px 14px 0;
        }
        .box-logo{
            /*margin-top: 30px;*/
            font-size: 12px;
            width: 688px;
        }
        .box-logo .info{
            border: 0.5px solid #0f0f0f;
            margin-top: 5px;
            padding: 10px 5px;
            border-radius: 5px;
        }
        .wid-226{
            width: 226px;
        }
        .wid-110{
            width: 110px;
        }
        .wid-140{
            width: 140px;
        }
        .box-logo-left img{
            width: 80px;
            height: 50px;
            margin: 10px 15px 10px 0;
        }
        .box-logo-left-content {
            margin-left: -4px;
        }
        .box-check{
            font-size: 12px;
            margin: 0 0 10px 3px;
        }
        .box-check .check-img{
            width: 16px;
            height: 16px;
            margin: 5px 0 0 5px;
        }
        .bank_logo{
            width: 61px;
            height: 18px;
        }
        .box-table{
            font-size: 12px;
        }
        .box-table .box-table-table table,.box-table .box-table-table table tr th,.box-table .box-table-table table tr td {
            border-collapse: collapse;
            border: 0.1px solid #0f0f0f;
        }
        .box-table .box-table-top{
            width: 690px;
            margin:0 auto;
        }
        .box-table .box-table-top table .wid-160{
            width: 60px;
        }
        .box-table .box-table-top table .wid-200{
            width: 180px;
        }
        .box-table .box-table-top table .wid-60{
            width: 30px;
        }
        .box-table .box-table-content{
            margin: 5px 0;
            font-size: 12px;
        }
        .box-table .box-table-content table {
            width: 150px;
        }
        .box-table .box-table-content table tr td{
            border: 0;
        }
        .box-cod{
            margin-top: -10px;
        }
        .barcode img{
            width: 340px;
            height: 28px;
            margin-top: 10px;
        }
        .box-table-information img{
            width: 80px;
            height: 80px;
            position: relative;
            top: 40px;
        }
        .box-table-information div{
            padding-bottom: 0;
        }
        .small-table{
            margin-left: 172px;
            margin-top: -5px;
        }
        .small-table,.small-table tr th,.small-table tr td {
            border-collapse: collapse;
            border: 0.1px solid #0f0f0f;
        }
    </style>
</head>
<body>
<div class="content">
    <div class="box">
        <table class="box-top">
            <tr>
                <td><div class="box-top-left">ใบนำฝากชำระเงินค่าสินค้าหรือบริการ (Bill Payment Pay-In Slip)</div></td>
                <td style="width: 90px"></td>
                <td><div class="box-top-right">
                    <div>สำหรับลูกค้า</div>
                    <div class="text-yellow">โปรดเรียกเก็บค่าธรรมเนียมจากผู้ชำระเงิน*</div>
                </div></td>
            </tr>
        </table>
        <table class="box-logo">
            <tr>
                <td class="box-logo-left">
                    <table>
                        <tr>
                            <td><div class="box-logo-left-content">
                                <div>บริษัท ไอพอลิเมอร์ จำกัด</div>
                                <span>ที่อยู่ 555/2 อาคารบี ชั้น 9 ถ.วิภาวดีรังสิต แขวงจตุจักร </span>
                                <div>เขตจตุจักร กรุงเทพมหานคร 10900</div>
                            </div></td>
                        </tr>
                    </table>
                    <div>เลขประจำตัวผู้เสียภาษี 0105561200347.   โทรศัพท์ 02 765-7000</div>
                </td>
                <td class="box-logo-right">
                    <table class="branch">
                        <tr>
                            <td><div>สาขา/Branch</div><div class="enter-content" style="margin-left: 80px"></div></td>
                            <td><div class="margin-right-10"><div>วันที่/Date</div><div class="enter-content" style="margin-left: 60px"></div></div></td>
                        </tr>
                    </table>
                    <div class="info">
                        <div class="margin-bottom-5"><div style="margin-bottom: -12px">ชื่อ/Name</div><div class="enter-content" style="margin-left: 60px;width: 260px">${companyName}</div></div>
                        <div class="margin-bottom-5"><div style="margin-bottom: -12px">รหัสลูกค้า/Customer No(Ref.1)</div><div class="enter-content" style="margin-left: 180px;width: 142px">${companyCode}</div></div>
                        <div class=""><div style="margin-bottom: -12px">หมายเลขอ้างอิง/Reference No(Ref.2)</div><div  class="enter-content" style="margin-left: 210px;width: 110px">${orderNo}</div></div>
                    </div>
                </td>
            </tr>
        </table>
        <div class="box-check">
            <div>เพื่อนำเข้าบัญชี บริษัท ไอพอลิเมอร์ จำกัด</div>
            <table style="margin-bottom: -5px">
                <tr>
                    <td><img src='data:img/jpg;base64,iVBORw0KGgoAAAANSUhEUgAAAB4AAAAeCAYAAAA7MK6iAAAAAXNSR0IArs4c6QAAAHpJREFUSA3t
lsEKwCAMQ9vhh+/POy/K28Zuxh5WQYggiXle6mYWfe9YzpCDh526jbAITXH3W9ERZ/mN51NE4uyL
1mmNK5jfINWFWoqX5oWaNKS6UEvx0rxQk4ZUF2opXprPKfNrGuTllTrtj19D73MaXNmSXmmN/xd8
ARw3CERWg3zaAAAAAElFTkSuQmCC' class="check-img"/></td>
                    <td></td>
                    <td><img src='data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABEAAAAZCAIAAABYXFLAAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAyZpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuNi1jMTQ1IDc5LjE2MzQ5OSwgMjAxOC8wOC8xMy0xNjo0MDoyMiAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RSZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENDIDIwMTkgKFdpbmRvd3MpIiB4bXBNTTpJbnN0YW5jZUlEPSJ4bXAuaWlkOkNGOEVFMTQxQTkzQzExRTk4MjYxOTI5RkFDNDFCRTQ2IiB4bXBNTTpEb2N1bWVudElEPSJ4bXAuZGlkOkNGOEVFMTQyQTkzQzExRTk4MjYxOTI5RkFDNDFCRTQ2Ij4gPHhtcE1NOkRlcml2ZWRGcm9tIHN0UmVmOmluc3RhbmNlSUQ9InhtcC5paWQ6Q0Y4RUUxM0ZBOTNDMTFFOTgyNjE5MjlGQUM0MUJFNDYiIHN0UmVmOmRvY3VtZW50SUQ9InhtcC5kaWQ6Q0Y4RUUxNDBBOTNDMTFFOTgyNjE5MjlGQUM0MUJFNDYiLz4gPC9yZGY6RGVzY3JpcHRpb24+IDwvcmRmOlJERj4gPC94OnhtcG1ldGE+IDw/eHBhY2tldCBlbmQ9InIiPz7LFjf/AAAC4klEQVR42mIMV6tiIBEw4ZJgZWUkTY+rB+vEhmNAklg9IeHMgeYbGX68CjTfEBbJTFhPciqDk/r6r2z6XUuDv7AaOaiuT03Hq6e4+JexxIZPrBaV9TIP7v2papACsg3FNpSU/MKuJzKaSZlr218u1cY2iT9//gNFgCSQDRRR4twGlMWiR0ftNQMj07y1Bt+//4MLAtmLNhoCxUGymHoEmW8AXXL+zG80158+8esji6Ugy210PVo6rAw/X1+4IYk1cC/elGD48UJDmxVFj6UlyPhnz7BH16NHIHFrq98oelRkX+NJLMzMKGqgevgZr4Oi3+4VEzMDCwujtx+roBCTpw8LkA1E7g6vQGqYbkIUswAxJyfTNyYlLoZ3wv8OTqnjZmD4x/Dn+62bob6Gq31NOBiYWBh+fwEq+8aoAFQJDEkWSICWVMsYmyqG+j7j+3Oc4T8orP//B0URw98fDP+YPrFar94sdfb0b5BxDAyMWPMCOwfjzx//ISSmLAsXLwdWf3OxIkg0wAh1AymA5e/ff5tnH3rx6J2wBL9dgKG4nND/f/+3zj9y68JjoBPcos2FxPhuX3wMUS0uKySnLsH8+gD3mb3X3734eP30/e9ffxrZq6fbtJ/ec/3T26+Pb7389vknJw97f97yD68+3zz7cO2UfUxMjCzvX34ycdEsnhINMWnDjANA1dldIbb+htD0tucaBxdb3eIUIHth69b7156zKOtKn959LUanTklHOr8/AugMRkZGuAYI+PHtV1PsnH///t+/+qxgYgTzoatbTJw1v3z8fvHI7YuHb4tKCTy6+cIn2ZaFFZqrn917fW7fjfwJkbpWygyMjNsWHGWaUbXu/evPrpHmPHycP7//dgozBapriZ979eS9EzuuXD56Bxr0vBzMLMzcfByf3n1lTDFr+fzhGygF8bAXTozUs1EFOnrXspN///wFOtI53NTYUWNyySpQtDAyisoI+ibbAgQYAH58Jv+pVW+OAAAAAElFTkSuQmCC' class="sbc-img margin-right-10"/></td>
                    <td><div class="bill-payment">บมจ.ธนาคารไทยพาณิชย์ เลขที่บัญชี 422-016126-6 (Bill Payment)(5/5)*(ชำระผ่านช่องทางดิจิทัลแบงค์กิ้ง/ATM)</div></td>
                </tr>
            </table>
            <table>
                <tr>
                    <td><img src='data:img/jpg;base64,iVBORw0KGgoAAAANSUhEUgAAAB4AAAAeCAYAAAA7MK6iAAAAAXNSR0IArs4c6QAAAHpJREFUSA3t
lsEKwCAMQ9vhh+/POy/K28Zuxh5WQYggiXle6mYWfe9YzpCDh526jbAITXH3W9ERZ/mN51NE4uyL
1mmNK5jfINWFWoqX5oWaNKS6UEvx0rxQk4ZUF2opXprPKfNrGuTllTrtj19D73MaXNmSXmmN/xd8
ARw3CERWg3zaAAAAAElFTkSuQmCC' class="check-img"/></td>
                    <td><div>
                        <span>ธนาคารอื่นๆ ช่องทางสาขา  Biller ID  0105561200347(ค่าธรรมเนียมไม่เกิน 20 บาท/รายการ)</span>
                    </div></td>
                    <td><img src='data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAEcAAAAZCAIAAADsVqTPAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAyZpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuNi1jMTQ1IDc5LjE2MzQ5OSwgMjAxOC8wOC8xMy0xNjo0MDoyMiAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RSZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENDIDIwMTkgKFdpbmRvd3MpIiB4bXBNTTpJbnN0YW5jZUlEPSJ4bXAuaWlkOjcyODMxMzNBQTkzQTExRTlCQUQ3Q0E5NDYwQjEwRjU2IiB4bXBNTTpEb2N1bWVudElEPSJ4bXAuZGlkOjcyODMxMzNCQTkzQTExRTlCQUQ3Q0E5NDYwQjEwRjU2Ij4gPHhtcE1NOkRlcml2ZWRGcm9tIHN0UmVmOmluc3RhbmNlSUQ9InhtcC5paWQ6NzI4MzEzMzhBOTNBMTFFOUJBRDdDQTk0NjBCMTBGNTYiIHN0UmVmOmRvY3VtZW50SUQ9InhtcC5kaWQ6NzI4MzEzMzlBOTNBMTFFOUJBRDdDQTk0NjBCMTBGNTYiLz4gPC9yZGY6RGVzY3JpcHRpb24+IDwvcmRmOlJERj4gPC94OnhtcG1ldGE+IDw/eHBhY2tldCBlbmQ9InIiPz4ZWnSOAAAIwElEQVR42sxY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' class="bank_logo"/></td>
                </tr>
            </table>
        </div>
        <div class="box-table">
            <div class="box-table-top box-table-table">
                <table cellpadding="5" style="width: 680px;margin-left: 4px">
                    <tr>
                        <th >รับเฉพาะเงินสดเท่านั้น</th>
                        <th class="td-gray">จำนวนเงิน (บาท)/Amount (Baht)</th>
                        <th  style="text-align: right;width: 150px">${amountIntegerPart}</th>
                        <th class="wid-60" style="text-align: right">${amountFractionalPart?string["00"]}</th>
                    </tr>
                    <tr>
                        <td >
                            <div>จำนวนเงินเป็นตัวอักษร</div>
                            <div>Amount in Words</div></td>
                        <td colspan="3">${amountInWords}</td>
                    </tr>
                </table>
            </div>
            <table class="box-table-content" style="margin-left: -5px">
                <tr>
                    <td style="width: 300px;padding-top: 6px">
                        <div style="padding-bottom: 5px"><div>&nbsp;ชื่อผู้นำฝาก/Deposit by</div><div class="enter-content wid-140" style="margin-left: 140px;"></div></div>
                        <div><div>&nbsp;โทรศัพท์/Telephone </div><div class="enter-content" style="margin-left: 140px;width: 140px"></div></div>
                    </td>
                    <td>
                        <table class="small-table">
                            <tr>
                                <th class="td-gray" style="padding: 3px 0 2px;"><div style="width: 210px">สำหรับเจ้าหน้าที่ธนาคาร</div></th>
                            </tr>
                            <tr>
                                <td style="padding: 8px 0 8px">
                                    <span>&nbsp;&nbsp;ผู้รับเงิน </span><div class="enter-content" style="margin-left: 60px;width: 150px"></div>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </div>
        <table class="box-cod" style="margin:4px 0 0 -8px">
            <tr>
                <td class="box-table-information">
                    <div style="margin-left: 10px;font-size: 10px">
                        <div>หมายเหตุ</div>
                        <div>-ท่านสามารถตรวจสอบรายชื่อธนาคารและผู้ให้บริการที่เข้าร่วมได้จากเว็บไซต์ของธนาคารแห่งประเทศไทย</div>
                        <div>-ค่าธรรมเนียมเป็นไปตามเงื่อนไขและข้อกำหนดของแต่ละธนาคาร/ผู้ให้บริการ</span>
                        </div>
                </td>
            </tr>
        </table>
    </div>
    <div class="box">
        <table class="box-top">
            <tr>
                <td><div class="box-top-left">ใบนำฝากชำระเงินค่าสินค้าหรือบริการ (Bill Payment Pay-In Slip)</div></td>
                <td style="width: 90px"></td>
                <td><div class="box-top-right">
                    <div>สำหรับธนาคาร</div>
                    <div class="text-yellow">โปรดเรียกเก็บค่าธรรมเนียมจากผู้ชำระเงิน*</div>
                </div></td>
            </tr>
        </table>
        <table class="box-logo">
            <tr>
                <td>
                    <div class="box-logo-left">
                        <table class="">
                            <tr>
                                <td><div class="box-logo-left-content">
                                    <div>บริษัท ไอพอลิเมอร์ จำกัด</div>
                                    <span>ที่อยู่ 555/2 อาคารบี ชั้น 9 ถ.วิภาวดีรังสิต แขวงจตุจักร </span>
                                    <div>เขตจตุจักร กรุงเทพมหานคร 10900</div></div></td>
                            </tr>
                        </table>
                        <div>เลขประจำตัวผู้เสียภาษี 0105561200347.   โทรศัพท์ 02 765-7000</div>
                    </div>
                </td>
                <td>
                    <div class="box-logo-right">
                        <table class="branch margin-bottom-5">
                            <tr>
                                <td><div class=""><span>สาขา/Branch</span><div class="enter-content" style="margin-left: 80px"></div></div></td>
                                <td><div class="margin-right-10"><span>วันที่/Date</span><div class="enter-content" style="margin-left: 60px"></div></div></td>
                            </tr>
                        </table>
                        <div class="info">
                            <div class=""><div style="margin-bottom: -12px">ชื่อ/Name</div><div class="enter-content" style="margin-left: 60px;width: 260px">${companyName}</div></div>
                            <div class=""><div style="margin-bottom: -12px">รหัสลูกค้า/Customer No(Ref.1)</div><div class="enter-content wid-110" style="margin-left: 180px;width: 142px"><span>${companyCode}</span></div></div>
                            <div class=""><div style="margin-bottom: -12px">หมายเลขอ้างอิง/Reference No(Ref.2)</div><div  class="enter-content" style="margin-left: 210px;width: 110px">${orderNo}</div></div>
                        </div>
                    </div>
                </td>
            </tr>
        </table>
        <div class="box-check">
            <div>เพื่อนำเข้าบัญชี บริษัท ไอพอลิเมอร์ จำกัด</div>
            <table style="margin-bottom: -5px">
                <tr>
                    <td><img src='data:img/jpg;base64,iVBORw0KGgoAAAANSUhEUgAAAB4AAAAeCAYAAAA7MK6iAAAAAXNSR0IArs4c6QAAAHpJREFUSA3t
lsEKwCAMQ9vhh+/POy/K28Zuxh5WQYggiXle6mYWfe9YzpCDh526jbAITXH3W9ERZ/mN51NE4uyL
1mmNK5jfINWFWoqX5oWaNKS6UEvx0rxQk4ZUF2opXprPKfNrGuTllTrtj19D73MaXNmSXmmN/xd8
ARw3CERWg3zaAAAAAElFTkSuQmCC' class="check-img"/></td>
                    <td><img src='data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABEAAAAZCAIAAABYXFLAAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAyZpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuNi1jMTQ1IDc5LjE2MzQ5OSwgMjAxOC8wOC8xMy0xNjo0MDoyMiAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RSZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENDIDIwMTkgKFdpbmRvd3MpIiB4bXBNTTpJbnN0YW5jZUlEPSJ4bXAuaWlkOkNGOEVFMTQxQTkzQzExRTk4MjYxOTI5RkFDNDFCRTQ2IiB4bXBNTTpEb2N1bWVudElEPSJ4bXAuZGlkOkNGOEVFMTQyQTkzQzExRTk4MjYxOTI5RkFDNDFCRTQ2Ij4gPHhtcE1NOkRlcml2ZWRGcm9tIHN0UmVmOmluc3RhbmNlSUQ9InhtcC5paWQ6Q0Y4RUUxM0ZBOTNDMTFFOTgyNjE5MjlGQUM0MUJFNDYiIHN0UmVmOmRvY3VtZW50SUQ9InhtcC5kaWQ6Q0Y4RUUxNDBBOTNDMTFFOTgyNjE5MjlGQUM0MUJFNDYiLz4gPC9yZGY6RGVzY3JpcHRpb24+IDwvcmRmOlJERj4gPC94OnhtcG1ldGE+IDw/eHBhY2tldCBlbmQ9InIiPz7LFjf/AAAC4klEQVR42mIMV6tiIBEw4ZJgZWUkTY+rB+vEhmNAklg9IeHMgeYbGX68CjTfEBbJTFhPciqDk/r6r2z6XUuDv7AaOaiuT03Hq6e4+JexxIZPrBaV9TIP7v2papACsg3FNpSU/MKuJzKaSZlr218u1cY2iT9//gNFgCSQDRRR4twGlMWiR0ftNQMj07y1Bt+//4MLAtmLNhoCxUGymHoEmW8AXXL+zG80158+8esji6Ugy210PVo6rAw/X1+4IYk1cC/elGD48UJDmxVFj6UlyPhnz7BH16NHIHFrq98oelRkX+NJLMzMKGqgevgZr4Oi3+4VEzMDCwujtx+roBCTpw8LkA1E7g6vQGqYbkIUswAxJyfTNyYlLoZ3wv8OTqnjZmD4x/Dn+62bob6Gq31NOBiYWBh+fwEq+8aoAFQJDEkWSICWVMsYmyqG+j7j+3Oc4T8orP//B0URw98fDP+YPrFar94sdfb0b5BxDAyMWPMCOwfjzx//ISSmLAsXLwdWf3OxIkg0wAh1AymA5e/ff5tnH3rx6J2wBL9dgKG4nND/f/+3zj9y68JjoBPcos2FxPhuX3wMUS0uKySnLsH8+gD3mb3X3734eP30/e9ffxrZq6fbtJ/ec/3T26+Pb7389vknJw97f97yD68+3zz7cO2UfUxMjCzvX34ycdEsnhINMWnDjANA1dldIbb+htD0tucaBxdb3eIUIHth69b7156zKOtKn959LUanTklHOr8/AugMRkZGuAYI+PHtV1PsnH///t+/+qxgYgTzoatbTJw1v3z8fvHI7YuHb4tKCTy6+cIn2ZaFFZqrn917fW7fjfwJkbpWygyMjNsWHGWaUbXu/evPrpHmPHycP7//dgozBapriZ979eS9EzuuXD56Bxr0vBzMLMzcfByf3n1lTDFr+fzhGygF8bAXTozUs1EFOnrXspN///wFOtI53NTYUWNyySpQtDAyisoI+ibbAgQYAH58Jv+pVW+OAAAAAElFTkSuQmCC' class="sbc-img margin-right-10"/></td>
                    <td><div class="bill-payment">บมจ.ธนาคารไทยพาณิชย์ เลขที่บัญชี 422-016126-6 (Bill Payment)(5/5)*(ชำระผ่านช่องทางดิจิทัลแบงค์กิ้ง/ATM)</div></td>
                </tr>
            </table>
            <table class="">
                <tr>
                    <td><img src='data:img/jpg;base64,iVBORw0KGgoAAAANSUhEUgAAAB4AAAAeCAYAAAA7MK6iAAAAAXNSR0IArs4c6QAAAHpJREFUSA3t
lsEKwCAMQ9vhh+/POy/K28Zuxh5WQYggiXle6mYWfe9YzpCDh526jbAITXH3W9ERZ/mN51NE4uyL
1mmNK5jfINWFWoqX5oWaNKS6UEvx0rxQk4ZUF2opXprPKfNrGuTllTrtj19D73MaXNmSXmmN/xd8
ARw3CERWg3zaAAAAAElFTkSuQmCC' class="check-img"/></td>
                    <td><div>
                        <span>ธนาคารอื่นๆ ช่องทางสาขา  Biller ID  0105561200347(ค่าธรรมเนียมไม่เกิน 20 บาท/รายการ)</span>
                    </div></td>
                    <td><img src='data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAEcAAAAZCAIAAADsVqTPAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAyZpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuNi1jMTQ1IDc5LjE2MzQ5OSwgMjAxOC8wOC8xMy0xNjo0MDoyMiAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RSZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENDIDIwMTkgKFdpbmRvd3MpIiB4bXBNTTpJbnN0YW5jZUlEPSJ4bXAuaWlkOjcyODMxMzNBQTkzQTExRTlCQUQ3Q0E5NDYwQjEwRjU2IiB4bXBNTTpEb2N1bWVudElEPSJ4bXAuZGlkOjcyODMxMzNCQTkzQTExRTlCQUQ3Q0E5NDYwQjEwRjU2Ij4gPHhtcE1NOkRlcml2ZWRGcm9tIHN0UmVmOmluc3RhbmNlSUQ9InhtcC5paWQ6NzI4MzEzMzhBOTNBMTFFOUJBRDdDQTk0NjBCMTBGNTYiIHN0UmVmOmRvY3VtZW50SUQ9InhtcC5kaWQ6NzI4MzEzMzlBOTNBMTFFOUJBRDdDQTk0NjBCMTBGNTYiLz4gPC9yZGY6RGVzY3JpcHRpb24+IDwvcmRmOlJERj4gPC94OnhtcG1ldGE+IDw/eHBhY2tldCBlbmQ9InIiPz4ZWnSOAAAIwElEQVR42sxY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' class="bank_logo"/></td>
                </tr>
            </table>
        </div>
        <div class="box-table">
            <div class="box-table-top box-table-table">
                <table cellpadding="4" style="width: 680px;margin-left: 4px">
                    <tr>
                        <th>รับเฉพาะเงินสดเท่านั้น</th>
                        <th class="td-gray">จำนวนเงิน (บาท)/Amount (Baht)</th>
                        <th style="text-align: right;width: 120px">${amountIntegerPart}</th>
                        <th class="wid-60" style="text-align: right">${amountFractionalPart?string["00"]}</th>
                        <th class="td-gray wid-200">สำหรับเจ้าหน้าที่ธนาคาร</th>
                    </tr>
                    <tr>
                        <td class="td-gray"><div>จำนวนเงินเป็นตัวอักษร</div><div>Amount in Words</div></td>
                        <td colspan="3">${amountInWords}</td>
                        <td><span>ผู้รับเงิน </span><div class="enter-content" style="margin-left: 45px;width: 140px;margin-right: -5px"></div></td>
                    </tr>
                </table>
            </div>
            <table class="box-table-content" style="margin-left: -2px">
                <tr>
                    <td class="barcode">
                        <img src='${barcode}'/>
                        <div >${barcodeNumber}</div>
                    </td>
                    <td>
                        <div style="padding-bottom: 5px;margin-left: 5px"><div>ชื่อผู้นำฝาก/Deposit by</div><div class="enter-content" style="margin-left: 130px; width: 120px"></div></div>
                        <div style="margin-left: 5px"><div>โทรศัพท์/Telephone </div><div class="enter-content" style="margin-left: 130px;width: 120px"></div></div>
                    </td>
                    <td>
                        <div class="box-table-information">
                            <img src='${qrcode}'  style="margin-left: 2px;"/>
                        </div>
                    </td>
                </tr>
            </table>
        </div>
        <table class="box-cod">
            <tr>
                <td class="box-table-information">
                    <div style="font-size: 10px">
                        <div>หมายเหตุ</div>
                        <div>-ท่านสามารถตรวจสอบรายชื่อธนาคารและผู้ให้บริการที่เข้าร่วมได้จากเว็บไซต์ของธนาคารแห่งประเทศไทย</div>
                        <div>-ค่าธรรมเนียมเป็นไปตามเงื่อนไขและข้อกำหนดของแต่ละธนาคาร/ผู้ให้บริการ</span>
                        </div>
                </td>
            </tr>
        </table>
    </div>
</div>
</body>
</html>
