draw_self();

draw_set_font(global.fontall);
draw_set_valign(fa_middle);
draw_set_halign(fa_center);
draw_set_color(#ffffff);


if global.tools==0{
	draw_text(x,y,"实用工具");
}
else if global.tools==1{
	draw_text(x,y,"曲线绘制");
}
else if global.tools==2{
	draw_text(x,y,"随机轨道");
}



if (global.tools==1){
	if (array_length(global.choose)>=2){
		draw_set_color(#ff8800);
		var _st=global.chartlist[global.choose[0]][1];
		var _et=global.chartlist[global.choose[array_length(global.choose)-1]][1];
		if _st==_et exit;
		var _sx,_ex;
		var i=_st
		if global.view<=2&&global.view>=0{
		
			while(i+30<_et){
				_sx=scr_tcscal(_st,_et,tools[0][0],tools[0][1],i,tools[0][3]);
				_ex=scr_tcscal(_st,_et,tools[0][0],tools[0][1],i+25,tools[0][3]);
				draw_line_width(400+100*_sx,(global.charttime-i)*global.chartspeed+600,
					400+100*_ex,(global.charttime-i-25)*global.chartspeed+600,5);
				i+=25
			}
			_sx=scr_tcscal(_st,_et,tools[0][0],tools[0][1],i,tools[0][3]);
			draw_line_width(400+100*_sx,(global.charttime-i)*global.chartspeed+600,
				400+100*tools[0][1],(global.charttime-_et)*global.chartspeed+600,5);
		
		}
		else if(global.view==3){
			while(i+30<_et){
				_sx=scr_tcscal(_st,_et,tools[0][0],tools[0][1],i,tools[0][3]);
				_ex=scr_tcscal(_st,_et,tools[0][0],tools[0][1],i+25,tools[0][3]);
				draw_line_width(200-(global.charttime-i)*global.chartspeed*2,550-37.5*_sx,
					200-(global.charttime-i-25)*global.chartspeed*2,550-37.5*_ex,5);
				i+=25
			}
			_sx=scr_tcscal(_st,_et,tools[0][0],tools[0][1],i,tools[0][3]);
			draw_line_width(200-(global.charttime-i)*global.chartspeed*2,550-37.5*_sx,
				200-(global.charttime-_et)*global.chartspeed*2,550-37.5*tools[0][1],5);
			
			
			
		}

	
		
	}
	
}

if (global.tools==2){
	if (array_length(global.choose)>=1){
		draw_set_color(c_aqua);
		draw_set_alpha(0.4);
		draw_rectangle(400+100*tools[1][0],0,400+100*tools[1][1],600,0);
		draw_set_alpha(1);
	
	}
}

