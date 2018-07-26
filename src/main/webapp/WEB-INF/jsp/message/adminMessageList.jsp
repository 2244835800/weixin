<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>新闻信息页面</title>
    <link href="<%=path %>/css/common.css" type="text/css" rel="stylesheet">
    <link href="<%=path %>/css/page.css" type="text/css" rel="stylesheet" media="screen"/>
    <link href="<%=path %>/css/easyui.css" type="text/css" rel="stylesheet">
    <script type="text/javascript" src="<%=path %>/js/jquery.min.js"></script>
    <script type="text/javascript" src="<%=path %>/js/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="<%=path %>/js/ajaxfileupload.js"></script>
    <script type="text/javascript" src="<%=path%>/js/jquery.paginate.js"></script>
    <script type="text/javascript" src="<%=path %>/js/zDialog.js"></script>
    <script type="text/javascript" src="<%=path %>/js/zDrag.js"></script>
    <!-- 引用控制层插件样式 -->
		<link rel="stylesheet" href="<%=path %>/css/zyUpload.css" type="text/css">
		<!-- 引用核心层插件 -->
		<script type="text/javascript" src="<%=path %>/js/zyFile.js"></script>
		<!-- 引用控制层插件 -->
		<script type="text/javascript" src="<%=path %>/js/zyUpload.js"></script>
		<!-- 引用初始化JS -->
		<script type="text/javascript" src="<%=path %>/js/demo.js"></script>
<script type="text/javascript" src="<%=path %>/js/config.js"></script>


<style>
#pdf {
	width: 600px;
	height: 500px;
	margin: 2em auto;
}
#pdf p {
   padding: 1em;
}

#pdf object {
   display: block;
   border: solid 1px #666;
}
</style>

</head>
<body class="body_comm" >
<div style="width: 1220px; float: left;">
    <div class="div_opr">
        <div class="opr_div col_gra" onclick="del(0);">批量删除</div>
    </div>

    <div class="div_notice">
        <table class="tb_notice" cellspacing="0" cellpadding="0">
            <thead class="thead_notice">
            <tr>
                <td style="width: 20px;  text-align: center;"><input type="checkbox" onclick="checkall(this)"></td>
                <td style="width: 170px; text-align: left;" class="pdl5">信件标题</td>
                <td style="width: 300px; text-align: center;">信件内容</td>
                <td style="width: 100px; text-align: center;">发布时间</td>
                <td style="width: 300px; text-align: center;">操作</td>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${list}" var="list">
            <tr>
                <td class="tac"><input type="checkbox" value="${list.messageId}" name="check"></td>
                <td class="tal pdl5"><c:out value="${list.messageTitle}"  escapeXml="true" /></td>
                <td class="tac tacid" title="${list.messageMsg}">${list.messageMsg}</td>
                
                <!-- 修改此处 -->
                 <td class="tac">${list.dateTime}</td>
                <!--  -->
                <td class="tac">
                    <div class="td_div_opr td_div_opr_org" onclick="showmessage(${list.messageId});">查看</div>
                    <div class="td_div_opr td_div_opr_gra" onclick="del('${list.messageId}');">删除</div>
                </td>
            </tr>
           </c:forEach>
            </tbody>
        </table>
    </div>
</div>
<script language="javascript" type="text/javascript">
$(".tacid").each(function(){
	var maxwidth=22;
	if($(this).text().length>maxwidth){
	$(this).text($(this).text().substring(0,maxwidth));
	$(this).html($(this).html()+'…');
	}
	});
</script>




<!--分页插件已经修改过，并没有做到很智能，如果没有特殊需求，就不要改吧，项目中其他地方直接引入一下DIV即可-->
<div style="position: absolute; left: 20px; top:730px; width: 1200px;">
    <div id="foot" class="pagination_div"></div>
</div>

<div id="delConfim" style="width: 400px; height: 200px; position: absolute; top: 200px; left: 400px; display: none; float: left; z-index: 2;">
    <div style="width: 400px; height: 50px; line-height: 50px; vertical-align: middle; background-color: #f5a22b; color: white; font-weight: bold;border: thin solid #f5a22b;">
        <span style="float: left;padding-left: 10px;">删除</span>
        <span style="float: right;padding-right: 10px; cursor: default; font-size: 24px;" onclick="cancelDel();">×</span>
    </div>
    <div style="width: 400px; height: 150px; float: left; background-color: white; border: thin solid #bababa;">
        <div style="width: 400px; text-align: center;">
            <img src="<%=path %>/img/warn.png" style="margin-top:48px;">
            <span style="font-size: 18px; margin-top:40px;">&nbsp;&nbsp;确定要删除所选邮件吗？</span>
        </div>
        <div style="width: 400px; height: 50px; float: left; margin-top: 20px;">
          <a id="deleteA" style="text-decoration:none;"><span id="delespan"></span>  </a>
          <input type="button" class="btn_save btn_bgc_commit btn_ml" value="确&nbsp;&nbsp;定" onclick="delbutton()">
            <input type="button" class="btn_save btn_bgc_cancel btn_ml" value="取&nbsp;&nbsp;消" onclick="cancelDel();">
        </div>
    </div>
</div>

<div id="checkNotice" style="width: 800px; height: auto; position: absolute; top: 50px; left: 200px; display: none; float: left; z-index: 3;">
    <div style="width: 800px; height: 50px; line-height: 50px; vertical-align: middle; background-color: #f5a22b; color: white; font-weight: bold;border: thin solid #f5a22b;">
        <span style="float: left;padding-left: 10px;">查看信件</span>
        <span style="float: right;padding-right: 10px; cursor: default; font-size: 24px;" onclick="cancelCheck();">×</span>
    </div>
    <div style="width: 800px; height: auto; float: left; background-color: white; border: thin solid #bababa;">
        <div style="width: 800px; text-align: center; margin-top: 20px; height: 40px; line-height: 40px; vertical-align: middle;">
            <span style="font-size: 18px;" id="show_title"></span>
        </div>
        <div style="width: 790px; text-align: center; margin-top: 0px; margin-left: 5px; height: 30px; line-height: 20px; vertical-align: middle; border-bottom: thin solid #bababa;">
            <span style="font-size: 14px; color: #898989;" id="show_time"></span>
        </div>
        <div style="width: 760px; min-height: 300px; margin-top: 20px; margin-left: 20px;word-wrap: break-word; word-break: normal;"   >
        <span id="show_msg"></span>
                <br><br>
        <img id="showImg1" style="width: 352px"><img id="showImg2" style="width: 352px;margin-left: 5px;">
        </div>
       
    </div>
</div>






<



<script language="javascript" type="text/javascript">
    $(document).ready(function () {
    	var code=${code};
    	if(code==1){
    		alert("添加成功！");
    	}else if(code==2){
    		alert("修改成功！");
    	}else if(code==3){
    		alert("删除成功！");
    	}else if(code==4){
    		alert("数据有误，操作失败！");
    	}
        $("#foot").paginate({
            count: "${page.totalPageCount}",//总页数
            start: "${page.pageNow}",//起始页，翻页时把此列改为新页码
            display: 5,//默认显示数
            border: true,
            border_color: '#E6E9EC',
            text_color: 'black',
            background_color: 'white',
            border_hover_color: '#E6E9EC',
            text_hover_color: 'white',
            background_hover_color: '#f5be2e',
            rotate: false,
            images: false,
            mouse: 'press',
            onChange: function (page) {
            
            	window.location.href="getmessageList?pageNow="+ page
            	
//                alert("第" + page + "页");
            }
        });
       
        	
       
    })
function checkall(aa){
  		var checks=document.getElementsByName("check");
  		
  		for(var i=0;i<checks.length;i++){
  			
  			if(aa.checked){
  				
  				checks[i].checked=true;
  			}else if(!aa.checked){
  			
  				checks[i].checked=false;
  			}
  		}
  	}
    function del(id) {
    	if(id==0){
    		var checks=document.getElementsByName("check");
      		var result = "";
      		
      		for(var i=0;i<checks.length;i++){
      			
      			if(checks[i].checked){
      				result+=checks[i].value+",";
      				
      			}
      			
      		}
      		
      		if(result==""){
      			alert("请选择删除的信件")
      		}else{
      			$("#deleteA").attr("href","deleteMessage?messageId="+result);
      	        $("#delConfim").css('display','block');
      		}
      		
    	}else{
    		
    		
    		$("#deleteA").attr("href","deleteMessage?messageId="+id);
        $("#delConfim").css('display','block');
        }
    	
  		
    	
    	
    }

    function cancelDel() {
        $("#delConfim").css('display','none');
    }

    
    
    
    
    
    
    function showmessage(id) {
  
    	 $.ajax({  
        		          type:"POST", 
        		         url:"showMessage", 
        		          data:{id:id},
        		           dataType:"json", 
        		           async: false,
        		           success:function(data){ 
        		        	   console.log(data)
        		       $("#show_title").html(html_encode(data.messageTitle));
        		       $("#show_time").html(data.dateTime);//暂存为时间
        		       $("#show_msg").html(html_encode(data.messageMsg));
        		       if(data.comments1==""){
        		    	   $("#showImg1").removeAttr("src");
        		       }else{
        		    	   $("#showImg1").attr("src",data.comments1);
        		       }
        		       if(data.comments2==""){
        		    	   $("#showImg2").removeAttr("src");
        		       }else{
        		    	   $("#showImg2").attr("src",data.comments2);
        		       }
        		       
        		        	$("#checkNotice").css('display','block');
        		        } ,
        		        error:function(){
        		            alert("失败");
        		        }
        			  })
        
    }

    function cancelCheck() {
        $("#checkNotice").css('display','none');
    }


    function cancelCreate() {
    	
        $("#createNotice").css('display','none');
        $("#successDiv").css('display','none');
        $("#successDiv").css('height','50px');
        for(var i=0;i<4;i++){
        	$("#successDiv"+i).css("display","none");
			$("#successDiv"+i).find("div").css("display","none");
			$("#successDiv"+i).find("input").val("");
			$("#successDiv"+i).attr("title","");
        }
        
    }
    
    
    function submmit(){
    	var title=$("[name=messageTitle]").val();
  	  var msg=$("[name=messageMsg]").val();
  	 if(title.trim()==""||title.length>14){
		  alert("标题不能为空且必须小于15字");
		  return false;
	  }else if(msg.length>199){
		  alert("新闻内容必须小于200字");
		  return false;
	  }else{
		  
		  wait();
		  return true;
		  
	  }

  	  
    }
    function html_encode(str)   
    {   
      var s = "";   
      if (str.length == 0) return "";   
      s = str.replace(/&/g, "&gt;");   
      s = s.replace(/</g, "&lt;");   
      s = s.replace(/>/g, "&gt;");   
      s = s.replace(/ /g, "&nbsp;");   
      s = s.replace(/\'/g, "&#39;");   
      s = s.replace(/\"/g, "&quot;");   
      s = s.replace(/\n/g, "<br>");   
      return s;   
    } 
    function wait(){
    	var diag = new Dialog();
    	diag.Drag=false;
    	diag.ShowCloseButton=false;
    	diag.Width = 200;
    	diag.Height = 50;
    	diag.URL = "javascript:void(document.write(\'正在发布中，请稍后..\'))";
    	diag.show();
    }
    function delbutton(){
    	$("#delespan").click();
    	$("#delConfim").css('display','none');
    	var diag = new Dialog();
    	diag.Drag=false;
    	diag.ShowCloseButton=false;
    	diag.Width = 200;
    	diag.Height = 50;
    	diag.URL = "javascript:void(document.write(\'正在删除中，请稍后..\'))";
    	diag.show();
    }
    $(".showdeldiv").hover(function(){
    	
    	$(this).css("background","#e6e9ec");
    },function(){
    	$(".showdeldiv").css("background","white");
    })
    
    
    function show(a){
    	if($(a).next().css("display")=="none"){
    		$("#successDiv").css("height","100px");
    		$(a).next().css("display","block");
        	$(a).next().next().css("display","block");
    	}else{
    		$("#successDiv").css("height","50px");
    		$(a).next().css("display","none");
        	$(a).next().next().css("display","none");
        	for(var i=0;i<4;i++){
        	if($("#successDiv"+i).find("div").css("display")=="block"){
        		$("#successDiv").css("height","100px");
        		return;
        	}	
        	}
    	}
    }
    function delfile(a){
    	var size=$("#filesize").val();
    	$("#successDiv").css("height","50px");
    	if(size==1){
    		$("#successDiv").css("display","none");
    	}else{
    		$(a).parent().find("input").val("")
    		$(a).parent().attr("title","");
    		var a=0;
    		for(var i=0;i<4;i++){
    			$("#successDiv"+i).css("display","none");
    			$("#successDiv"+i).find("div").css("display","none");
    			var value=$("#successDiv"+i).find("input").val();
    			var changeName=$("#fileChageName"+i).val();
    			$("#successDiv"+i).find("input").val("");
    			$("#fileName"+i).val("");
    			$("#fileChageName"+i).val("");
    			$("#successDiv"+i).attr("title","");
    			if(value!=""){
    				$("#successDiv"+a).css("display","block");
    				$("#successDiv"+a).attr("title",value);
    				$("#fileName"+a).val(value);
    				$("#fileChageName"+a).val(changeName);
    				$("#successDiv"+a).find("input").val(value);
    				a++;
    			}
    			
            }
    	}
    	$("#filesize").val(--size);
    }
    
</script>
</body>
</html>