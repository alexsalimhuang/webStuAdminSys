/**
 * 
 */
	
	 // use a global for the submit and return data rendering in the examples
	 
	
		var editor = new $.fn.dataTable.Editor( {
	        ajax: "admin",
	        table: "#example",
	        fields: [ {
	                label: "First name:",
	                name: "first_name"
	            }, {
	                label: "Last name:",
	                name: "last_name"
	            }, {
	                label: "Position:",
	                name: "position"
	            }, {
	                label: "Office:",
	                name: "office"
	            }, {
	                label: "Extension:",
	                name: "extn"
	            }, {
	                label: "Start date:",
	                name: "start_date",
	                type: "datetime"
	            }, {
	                label: "Salary:",
	                name: "salary"
	            }
	        ]
	    } );
	 
	    var table = $('#example').DataTable( {
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
	            { data: "first_name" },
	            { data: "last_name" },
	            { data: "position" },
	            { data: "office" },
	            { data: "start_date" },
	            { data: "salary", render: $.fn.dataTable.render.number( ',', '.', 0, '$' ) },
	            null,
	            null,
	            null,
	            null,
	            null,
	            null,
	            null,
	            null,
	            null,
	            null
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
	    $('#example').on( 'click', 'tbody td:not(:first-child)', function (e) {
	        editor.inline( this );
	    } );
	 
	    // Inline editing on tab focus
	    table.on( 'key-focus', function ( e, datatable, cell ) {
	        editor.inline( cell.index(), {
	            onBlur: 'submit'
	        } );
	    } );