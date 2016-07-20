/**
 * 
 */
//为需要用data-loc属性跳转的对象写一个统一的方法，用到时调用他
	function lochash(obj){
		window.location.hash="#"+obj.attr("data-loc");
	}
//每个带data-loc的元素，点击时hash设置为其data-loc属性的值，开关	
	$("[data-loc]").on('click',function(){
		lochash($(this));
	});

//通过window.onhashchange事件
	$(window).on('hashchange',function(){
		if(window.location.hash){
			var loc = window.location.hash.substr(1);
			$("[data-loc="+loc+"]").click();
		}else{
			window.location.href='index3.jsp';//没有#时，则转到主页
		}
	});
//退出登录
	$("#sign-out").on('click',function(){
		window.location.href="user?oper=signout";
		
	});



//************************查询所有表******************************
//按li的序号选择，不符合语义化，就不这么用了	$('#data-access li').eq(0).on('click',function(){
	$("[data-loc=queryAllTables]").on('click',function(){
//方法一：		window.location.hash="#queryAllTables"; 最原始的，手动更改		
//方法二：		window.location.hash="#"+$(this).attr("data-loc"); 根据属性值更改
//方法三：		lochash($(this)); 调用方法更改，代码量少，代码复用 
//方法四：		在加载时统一绑定该方法，相当于一个开关，有时候不太好，因为相当于注入，有了耦合，没有拆开写灵活
//			$("[data-loc]").on('click',function(){lochash($(this))});
		
		$.ajax({
			url:'admin',
			type:'post',
			data:{
				oper:'queryAllTables'
			},
			success: function(result){
				$('#main-content').html(result);
			}									
		});				
	});

//*******************跳到选择表的页面*******************************
	$("[data-loc=chooseTable]").on('click',function(){
		$('#main-content').load('chooseTable.jsp',
				function(){
//					fn_queryTable();
					fn_clearTable();
				}
		);
		//加载的页面中的元素要绑定事件，直接在原来主页面中引用的js文件不起作用，在加载的页面中引入js文件的话，用load加载时jquery为了让js能运行
		//用了同步的ajax，浏览器会报错一个警告：同步的xhr已经deprecated，浏览器已经终止了它。当然只是警告也可以继续这么用，或者用下面的方式
		//$.getScript("/dist/js/index3.js");再或者在回调函数中调用绑定的方法。		
		//还可以使用加载页面的父元素进行操作，将加载页面的元素作为父元素的一个筛选条件，也能成功使用父页面的js
	});

//*******************跳到按条件查询的页面*******************************
	$("[data-loc=conditionalTable]").on('click',function(){
//		$('#main-content').load($(this).attr("data-loc")+'.jsp');
		$('#main-content').load('conditionalTable.jsp');
	});
	
//*******************整表查询的按钮*******************************	
	
	$('#main-content').on('click', 'button[data-customed="btn_queryTable"]',function(){
		$.ajax({
			url:'admin',
			type:'post',
			data:{
				oper:'queryByTableName',
				tableName: $('input[data-customed="input_tablename"]').val()
			},
			success: function(result){
				$('div[data-customed="tableview"]').html(result);
			}
		});	
	});


//查询输入框获得焦点时，如果有内容，按下回车触发查询按钮
	
	$('#main-content').on('keydown','input[data-customed="input_tablename"]',function(event){
		if(event.keyCode == 13 && $(this).val() !== ''){
			//执行登陆,触发登陆按钮的点击事件
			$('button[data-customed="btn_queryTable"]').trigger('click');
		}		
	});

	
	//清零整表查询的表名
	var fn_clearTable = function(){$('#btn_clearTable').on('click',function(){
			$('input[data-customed="input_tablename"]').val("");
			$('div[data-customed="tableview"]').html("");
		});
	};
	
	
	
//*******************条件查询的按钮*******************************	
	$('#queryByConditions').on('click',function(){
		$.ajax({
			url:'admin',
			type:'post',
			data:{
				oper:'queryByConditions'
			},
			success: function(result){
				$('#main-content').html(result);
			}
		});	
	});
	
//******************************************************

	 // use a global for the submit and return data rendering in the examples
	 
	
	var editor = new $.fn.dataTable.Editor( {
        ajax: "admin",
        table: "#main-content table[data-customed='designatedTable']",
        fields: [ {
                label: "stuNo:",
                name: "stuNo"
            }, {
                label: "stuName:",
                name: "stuName"
            }, {
                label: "stuSex:",
                name: "stuSex"
            }, {
                label: "stuEmail:",
                name: "stuEmail"
            }, {
                label: "stuDate:",
                name: "stuDate",
                type: "datetime"
            }, {
                label: "stuPhone:",
                name: "stuPhone"
            }, {
                label: "stuAddress:",
                name: "stuAddress"
            }
        ]
    } );
 
    var table = $("#main-content table[data-customed='designatedTable']").DataTable( {
        dom: "Bfrtip",	       
        processing:"true",
        serverSide:"true",
        ajax:  {
            "url": "admin",
            "data": {
                "user_id": 451
            }
          },
        columns: [
            {
                data: null,
                defaultContent: '',
                className: 'select-checkbox',
                orderable: false
            },
            { data: "stuNo" },
            { data: "stuName" },
            { data: "stuSex" },
            { data: "stuEmail" },
            { data: "stuDate" },
            { data: "stuPhone", render: $.fn.dataTable.render.number( ',', '.', 0, '$' ) },
            { data: "stuAddress" },
 
        ],
        order: [ 1, 'asc' ],
        keys: {
            columns: ':not(:first-child)',
            keys: [ 9 ]
        },
        select: {
            style:    'os',
            selector: 'td:first-child'
        },
        buttons: [
            { extend: "create", editor: editor },
            { extend: "edit",   editor: editor },
            { extend: "remove", editor: editor }
        ],
        
        /*language示例代码{
            "decimal":        "",
            "emptyTable":     "No data available in table",
            "info":           "Showing _START_ to _END_ of _TOTAL_ entries",
            "infoEmpty":      "Showing 0 to 0 of 0 entries",
            "infoFiltered":   "(filtered from _MAX_ total entries)",
            "infoPostFix":    "",
            "thousands":      ",",
            "lengthMenu":     "Show _MENU_ entries",
            "loadingRecords": "Loading...",
            "processing":     "Processing...",
            "search":         "Search:",
            "zeroRecords":    "No matching records found",
            "paginate": {
                "first":      "First",
                "last":       "Last",
                "next":       "Next",
                "previous":   "Previous"
            },
            "aria": {
                "sortAscending":  ": activate to sort column ascending",
                "sortDescending": ": activate to sort column descending"
            }
        }*/
        language : {
            "processing" : "正在加载中......",
            "lengthMenu" : "每页显示 _MENU_ 条记录",
            "zeroRecords" : "没有数据！",
            "emptyTable" : "表中无数据存在！",
            "info" : "当前显示 _START_ 到 _END_ 条，共 _TOTAL_ 条记录",
            "infoEmpty" : "显示0到0条记录",
            "infoFiltered" : "数据表中共为 _MAX_ 条记录",
            "search" : "搜索",
            "paginate" : {
                "first" : "首页",
                "previous" : "上一页",
                "next" : "下一页",
                "last" : "末页"
            }
        }
    } );
 
    // Inline editing on click
    $("#main-content table[data-customed='designatedTable']").on( 'click', 'tbody td:not(:first-child)', function (e) {
        editor.inline( this );
    } );
 
    // Inline editing on tab focus
    table.on( 'key-focus', function ( e, datatable, cell ) {
        editor.inline( cell.index(), {
            onBlur: 'submit'
        } );
    } );
	
	
	
	
	
	
	
