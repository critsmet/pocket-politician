# pocket-politician

Using OpenSecrets getLegislators API to retrieve politician data.

https://www.opensecrets.org/api/?method=getLegislators&output=doc


```
                       __              __      
                      /\ \            /\ \__   
 _____     ___     ___\ \ \/'\      __\ \ ,_\  
/\ '__`\  / __`\  /'___\ \ , <    /'__`\ \ \/  
\ \ \L\ \/\ \L\ \/\ \__/\ \ \\`\ /\  __/\ \ \_ 
 \ \ ,__/\ \____/\ \____\\ \_\ \_\ \____\\ \__\
  \ \ \/  \/___/  \/____/ \/_/\/_/\/____/ \/__/
   \ \_\                                       
    \/_/         
    
               ___        __                                        
              /\_ \    __/\ \__  __          __                     
 _____     ___\//\ \  /\_\ \ ,_\/\_\    ___ /\_\     __      ___    
/\ '__`\  / __`\\ \ \ \/\ \ \ \/\/\ \  /'___\/\ \  /'__`\  /' _ `\  
\ \ \L\ \/\ \L\ \\_\ \_\ \ \ \ \_\ \ \/\ \__/\ \ \/\ \L\.\_/\ \/\ \ 
 \ \ ,__/\ \____//\____\\ \_\ \__\\ \_\ \____\\ \_\ \__/.\_\ \_\ \_\
  \ \ \/  \/___/ \/____/ \/_/\/__/ \/_/\/____/ \/_/\/__/\/_/\/_/\/_/
   \ \_\                                                            
    \/_/                                                            

```
```
·····sssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssse····
····)QQQQQQQQQQQQQQQQQQQQQQQQSdPPPbPSSQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQ····
····)QQQQQQQQQQQQQQQQQQQQQbbb··············bbPSSQQQQQQQQQQQQQQQQQQQQQQQQQQQQ····
····)QQQQQQQQQQQQQQQQQSbb······p··psssspp··········bDbbSSQQQQQQQQQQQQQQQQQQQ····
····)QQQQQQQQQQQQQQSb····psQSb···············Dep···········QQQQQQQQQQQQQQQQQ····
····sQQQQQQQQQQQQQQp···(QQb······················e·········)QQQQQQQQQQQQQQQb····
····sQQQQQQQQQQQQQSb··sQS···············(·p·p······s·········)QQQQQQQQQQQQQb····
····sQQQQQQQQQQQQQQ·)QQb····s·········S·)QQQQQsp····)p·······sQQQQQQQQQQQQQb····
····QQQQQQQQQQQQQQQsQQb··sQQQQQQsep···SQQQSD····)p···)p·····)QQQQQQQQQQQQQQb····
····QQQQQQQQQQQQQS)QQQbsSGSb·(bSQQb····SO)sb·p·)Q·S···Q··S··)QQQQQQQQQQQQQQb····
····SQQQQQQQQQQQC···QQQQQSCpssQSPbS·······bbbbbb··e···Q··Q)s)QQQQQQQQQQQQQQb····
····QQQQQQQQQQQQb··sQQQQQSbbb····S············P·D·····)p·SQQsQQQQQQQQQQQQQQb····
····QQQQQQQQQQQQb·sQQQQbGpss····)QssQQQ·)··············Q·QQQQQQQQQQQQQQQQQQ·····
····QQQQQQQQQQQQQQQQQQ··········)QQQQSQQe·o············)·QQQQQQQQQQQQQQQQQQ·····
····QQQQQQQQQQQQQQQQQQsssQ·····)dSPb···)···u············p)QQQQQQQQQQQQQQQQQ·····
····QQQQQQQQQQQQQQQQQQQQQQQ···)·····ppp·················Q·)QQQQQQQQQQQQQQQQ·····
····QQQQQQQQQQQQQQQQQQQQQQQ··(b·sSb······CPe············)·Q··b)QQQQQQQQQQQQ·····
····QQQQQQQQQQQQQQQQQQQQQQQ··C)S)QQQQSSSSep·············sS····dQQQQQQQQQQQQ·····
····SQQQQQQQQQQQQQQQQQQQQQQ·S·)QQQS············e········Qb····QQQQQQQQQQQQQp····
····QQQQQQQQQQQQQQQSbGQQQQQQp(b························QQssssQQQQQQQQQQQQQQb····
····QQQQQQQQQQQQQQQQQsQQQQQQQQsssssQQQQQQQQsQQQQQQsssQQQQQQQQQQQQQQQQQQQQQQb····
····QQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQb····
····QQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQDSQSQQQQQQQQQQQQQQQQb····
····SQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQ·sQQSQQQQQQQQQQQQQQQb····
····)QQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQO·QQQQQQQQQQQQQQQQQQQQ····
····)QQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQOsQQQQQQQQQQQQQQQQQQQQ····
····)QQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQ····
····)QQQQQQQQQQQQQQQQQQQQSGQQQQQQQQQQQQQQQQQQQQQQQQSSb·)QQQQQQQQQQQQQQQQQQQQ····
····)QQQQQQQQQQQQQQQQQQQS···(bQQQQQQQQQQQQQQQQSPb······)QQQQQQQQQQQQQQQQQQQQ····
····)QQQQQQQQQQQQQQQQQQQ········D·DbbQQQQQQQQ··········)QQQQQQQQQQQQQQQQQQQQ····
····)QQQQQQQQQQQQQQQQQQQ··········)QQQQQp)QQQQQ········)QQQQQQQQQQQQQQQQQQQQ····
····)QQQQQQQQQQQQQQQQQQQ·········S··PSQQQ)QQQSSbp······)QQQQQQQQQQQQQQQQQQQQ····
····)QQQQQQQQQQQQQQQQQQb·······sb····sQS)QPb·····Q·····)QQQQQQQQQQQQQQQQQQS·····
····)QQQQQQQQQQQQQQQQQQb······S····sQQS·SQb·······Q····)QQQQQQQQQQQQQQQQQS······
····)QQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQb·······
····)QQQQQQQQQQQQQQQQQQep·ss·)SQQSSSSQQb·ep·S·)e·)b·)Q·QQQQQQQQQQQQQQQQb········
····)QQQQQQQQQQQQQQQQQQQb·sQ·(Q·S·so·SQb·sb·S·)Q·)DQ·SdQQQQQQQQQQQQQQQb·········
····)QQQQQQQQQQQQQQQQQQQb·sQ·)b·S·sSSQQb·Pb·S·PP·sqQo·)QQQQQQQQQQQQQSb··········
····)QQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQ········
    
```
                                                                    
