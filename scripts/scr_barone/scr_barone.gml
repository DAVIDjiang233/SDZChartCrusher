function scr_barone(bpm_array, start_time, end_time) {
        var bar_lines = [];
    
    // 遍历所有BPM段
    for (var i = 0; i < array_length(bpm_array); i++) {
        var segment_start = bpm_array[i][0];
        var bpm = bpm_array[i][1];
        
        // 确定当前BPM段的结束时间
        var segment_end = (i < array_length(bpm_array) - 1) ? bpm_array[i + 1][0] : end_time;
        
        // 只处理与目标时间范围有交集的BPM段
        if (segment_end >= start_time && segment_start <= end_time) {
            // 计算小节间隔(毫秒) - 假设4/4拍，一小节=4拍
            var bar_interval = 60000 / bpm;
            
            // 找到当前段内第一个小节线的时间
            var first_bar_time = ceil((max(segment_start, start_time) - segment_start) / bar_interval) * bar_interval + segment_start;
            
            // 生成当前段内的小节线
            var bar_time = first_bar_time;
            while (bar_time <= min(segment_end, end_time)) {
                if (bar_time >= start_time) {
                    array_push(bar_lines, bar_time);
                }
                bar_time += bar_interval;
            }
        }
    }
	
    draw_set_color(#ffaa00);
	
    for (var i = 0; i < array_length(bar_lines); i++) {
	        var _bar_times = bar_lines[i];
		
			var _y=(global.charttime-_bar_times)*global.chartspeed+600
	        draw_rectangle(446,_y-2,754,_y+2,0);
	}
}