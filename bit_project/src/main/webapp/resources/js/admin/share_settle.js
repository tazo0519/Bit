	function share() {
		
		$.ajax({
			url : '/bit_project/member_share_settle.tz',
			type : 'post',
			dataType : "json",
			contentType : 'application/x-www-form-urlencoded; charset=utf-8',
			success:function(data){
				$('#output').empty();
				$.each(data, function(index, item){	//각각의 데이터는 item에 저장됨. index는 parameter값 item은 실제 저장된 값.
					var output = '';
					var date = new Date(item.settlement_day);
					date = date_to_str(date);
					output += '<tr>';
					output += '<td>'+date+'</td>';
					output += '<td>'+item.email+'</td>';
					output += '<td>'+item.product_name+'</td>';
					output += '<td>'+item.accumulated_fund+'</td>';
					output += '<td>'+item.name+'</td>';
					output += '<td>'+item.bank+'</td>';
					output += '<td>'+item.account+'</td>';
					output += '</tr>';
					$('#output').append(output);
					
				});

			},
			error:function(){
				alert("ajax통신 실패 !!!");
			}
		});
	
	}
	share();
	
	
	
	function date_to_str(format)
    {
        var year = format.getFullYear();
        var month = format.getMonth() + 1;
        if(month<10) month = '0' + month;
        var date = format.getDate();
        if(date<10) date = '0' + date;
        var hour = format.getHours();
        if(hour<10) hour = '0' + hour;
        var min = format.getMinutes();
        if(min<10) min = '0' + min;
        var sec = format.getSeconds();
        if(sec<10) sec = '0' + sec;
        
        return year + "-" + month + "-" + date + " " + hour + ":" + min;
        
    }