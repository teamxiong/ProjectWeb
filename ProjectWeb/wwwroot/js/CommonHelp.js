function Getcols(Type) {
    var cols = [];
    if (Type == "setmenubutton") {
        cols = [
						{ type: 'checkbox', fixed: 'left' },
						{ field: 'name', title: '按钮名称', width: 150 },
						{ field: 'code', title: '标识码', width: 200 },
						{
						    field: 'icon', title: '图标', width: 100, templet: function (d) {
						        if (d.Icon == '') {
						            return '<span style="color: #F581B1;"></span>';
						        } else {
						            return '<i class="layui-icon ' + d.icon + '"></i>';
						        }
						    }
						},
						{ field: 'Description', title: '描述', width: 200 }];
    } else if (Type == "User_authorization_Roles") {
        cols = [//LAY_CHECKED
                   {
                       type: 'checkbox', fixed: 'left'},
                   { field: 'roleName', title: '角色名称', width: 150 },
                   { field: 'roleCode', title: '标识码', width: 200 },
            { field: 'description', title: '描述', width: 200 }];
    }

    return cols;
}
function Getdone(Type, res) {

        for (var i = 0; i < res.data.length; i++) {
            if (res.data[i]["laY_CHECKED"]) {
                //下面三句是通过更改css来实现选中的效果
                var index = res.data[i]['LAY_TABLE_INDEX'];
                $('tr[data-index=' + index + '] input[type="checkbox"]').prop('checked', true);
                $('tr[data-index=' + index + '] input[type="checkbox"]').next().addClass('layui-form-checked');
            }
        


    }
}
    function GetQueryString(name) {
        var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)", "i");
        var r = window.location.search.substr(1).match(reg);  //获取url中"?"符后的字符串并正则匹配            
        var context = "";
        if (r != null)
            context = r[2];
        reg = null;
        r = null;
        return context == null || context == "" || context == "undefined" ? "" : context;
    }
