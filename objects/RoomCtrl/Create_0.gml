musicplay=0;
global.musictime=200000;
global.fontall=font_add("DreamHanSans.ttc",16,0,0,32,128);
global.bpmlist=[[0,120]];
global.chartlist=[];
global.hidden=[];
global.camera=[];
global.list=0;
global.charttime=0;
global.barline=1;
global.chartspeed=0.5;
global.choose=[];
global.cancel=[];
global.copy=[];
global.showhigh=[-10,30];
global.base=[1,0,1,0,0];
global.pause=0;
global.pauseall=0;
global.view=0;
global.tools=0;
global.bpmchoose=-1;
global.bkgchoose=-1;
global.musicspeed=1;
scr_listchange(1);
global.barlist=scr_barline(global.bpmlist, global.charttime, global.charttime+600/global.chartspeed);


