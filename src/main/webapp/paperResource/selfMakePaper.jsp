<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title>Paper Star</title>
    <link rel="stylesheet" type="text/css" href="../css/wenjuan_ht.css">
    <script src="../js/jquery-1.8.0.min.js"></script>
    <link rel="stylesheet" type="text/css" href="../css/my_css.css">
</head>

<body style="background: #f5f5f5;">


<script>
    $(document).ready(function (e) {

        $(".btwen_text").val("题目1");
        $(".btwen_text_dx").val("单选题目");
        $(".btwen_text_duox").val("多选题目");
        $(".btwen_text_tk").val("填空题目");

        $(".leftbtwen_text").val("例子：CCTV1，CCTV2，CCTV3");
        //通过点击单选、多选的动画效果
        $(".xxk_title li").click(function () {
            var xxkjs = $(this).index();

            $(this).addClass("on").siblings().removeClass("on");
            //点击的选择框显示(单选部分、多选部分。。。。)，其余的hide
            $(".xxk_conn").children(".xxk_xzqh_box").eq(xxkjs).show().siblings().hide();

        });

        //鼠标移上去显示按钮
        $(".movie_box").hover(function () {

            var html_cz = "<div class='kzqy_czbut'><a href='javascript:void(0)' class='sy'>上移</a><a href='javascript:void(0)'  class='xy'>下移</a><a href='javascript:void(0)'  class='bianji'>编辑</a><a href='javascript:void(0)' class='del' >删除</a></div>"
            $(this).css({"border": "1px solid #0099ff"});
            //.after():使用函数在被选元素之后插入指定的内容
            if (!($(this).children(".kzqy_czbut").find("a").hasClass("bianji"))) {
                $(this).children(".wjdc_list").after(html_cz);
            }

        }, function () {

            $(this).css({"border": "1px solid #fff"});
            if ($(this).children(".kzqy_czbut").find("a").hasClass("sy")) {
                $(this).children(".kzqy_czbut").remove();
            }

        });

        //下移
        //通过 live() 方法附加的事件处理程序适用于匹配选择器的当前及未来的元素（比如由脚本创建的新元素）。划重点！当前与未来
        $(".xy").live("click", function () {
            //文字的长度
            //题目的个数
            var leng = $(".yd_box").children(".movie_box").length;
            //dog为当前点击下移块的index，从0开始。this指的是<a>下移</a>
            var dqgs = $(this).parent(".kzqy_czbut").parent(".movie_box").index();
            console.log("dqgs=" + dqgs);
            if (dqgs < leng - 1) {
                //czxx是movie_box
                var czxx = $(this).parent(".kzqy_czbut").parent(".movie_box");
                //xyghtml:下一个题目块中的内容，syghtml：当前点击下移块的内容
                var xyghtml = czxx.next().html();
                var syghtml = czxx.html();
                //移动上下两块的html内容（就是wjdc_list块）
                czxx.next().html(syghtml);
                czxx.html(xyghtml);
                //序号，nbm是题目序号，dog为当前点击下移块的index。由于movie_box是不会变的，变的只有其中的html，若index为2中的题号为
                //3,则其下移后变为index+2=4，而其下一个movie_box的题号由于移上来为index+1=3
                czxx.children(".wjdc_list").find(".nmb").text(dqgs + 1);
                czxx.next().children(".wjdc_list").find(".nmb").text(dqgs + 2);

                // $(this).parent(".kzqy_czbut").remove();
                czxx.next().find(".kzqy_czbut").remove();

            } else {
                alert("到底了");
            }
        });
        //上移
        $(".sy").live("click", function () {
            //文字的长度
            var leng = $(".yd_box").children(".movie_box").length;
            var dqgs = $(this).parent(".kzqy_czbut").parent(".movie_box").index();
            if (dqgs > 0) {
                var czxx = $(this).parent(".kzqy_czbut").parent(".movie_box");
                var xyghtml = czxx.prev().html();
                var syghtml = czxx.html();
                czxx.prev().html(syghtml);
                czxx.html(xyghtml);
                //序号
                czxx.children(".wjdc_list").find(".nmb").text(dqgs + 1);
                czxx.prev().children(".wjdc_list").find(".nmb").text(dqgs);

            } else {
                alert("到头了");
            }
        });
        //删除
        $(".del").live("click", function () {
            var nextMovie = $(this).parent(".kzqy_czbut").parent(".movie_box").next();
            var czxx = $(this).parent(".kzqy_czbut").parent(".movie_box");
            var zgtitle_gs = czxx.parent(".yd_box").find(".movie_box").length;
            var xh_num = 0;
            czxx.remove();
            //重新编号
            nextMovie.parent(".yd_box").find(".movie_box").each(function () {
                $(".yd_box").children(".movie_box").eq(xh_num).find(".nmb").text(xh_num + 1);
                xh_num++;
            });

        });

        //编辑
        $(".bianji").live("click", function () {
            //编辑的时候禁止其他操作

            $(this).siblings().remove();
            //$(this).parent(".kzqy_czbut").parent(".movie_box").unbind("hover");
            var dxtm = $(".dxuan").html();
            var duoxtm = $(".duoxuan").html();
            var tktm = $(".tktm").html();
            var jztm = $(".jztm").html();
            //接受编辑内容的容器(就是那个class=dxbox的div)
            var dx_rq = $(this).parent(".kzqy_czbut").parent(".movie_box").find(".dx_box");
            //attr() 方法设置或返回被选元素的属性值。
            var title = dx_rq.attr("data-t");
            //alert(title);
            //题目选项的个数
            var timlrxm = $(this).parent(".kzqy_czbut").parent(".movie_box").children(".wjdc_list").children("li").length;

            //单选题目
            if (title == 0) {
                dx_rq.show().html(dxtm);
                //模具题目选项的个数
                var bjxm_length = dx_rq.find(".title_itram").children(".kzjxx_iteam").length;
                var dxtxx_html = dx_rq.find(".title_itram").children(".kzjxx_iteam").html();

                //添加选项题目
                //模板中的选项个数bjxm_length=2，当前题目中的选项个数timlrxm（包括题目），这个for循环的作用是在页面上生成选项
                for (var i_tmxx = bjxm_length; i_tmxx < timlrxm - 1; i_tmxx++) {
                    dx_rq.find(".title_itram").append("<div class='kzjxx_iteam'>" + dxtxx_html + "</div>");
                }
                //赋值文本框
                //题目标题
                var texte_bt_val = $(this).parent(".kzqy_czbut").parent(".movie_box").find(".wjdc_list").children("li").eq(0).find(".tm_btitlt").children(".btwenzi").text();
                dx_rq.find(".btwen_text").val(texte_bt_val);
                //遍历题目项目的文字
                var bjjs = 0;
                $(this).parent(".kzqy_czbut").parent(".movie_box").find(".wjdc_list").children("li").each(function () {
                    //可选框框,这里的this变为了li
                    //题目选项
                    var texte_val = $(this).find("span").text();
                    dx_rq.find(".title_itram").children(".kzjxx_iteam").eq(bjjs - 1).find(".input_wenbk").val(texte_val);
                    bjjs++

                });
            }
            //多选题目
            if (title == 1) {
                dx_rq.show().html(duoxtm);
                //模具题目选项的个数
                var bjxm_length = dx_rq.find(".title_itram").children(".kzjxx_iteam").length;
                var dxtxx_html = dx_rq.find(".title_itram").children(".kzjxx_iteam").html();
                //添加选项题目
                for (var i_tmxx = bjxm_length; i_tmxx < timlrxm - 1; i_tmxx++) {
                    dx_rq.find(".title_itram").append("<div class='kzjxx_iteam'>" + dxtxx_html + "</div>");
                    //alert(i_tmxx);
                }
                //赋值文本框
                //题目标题
                var texte_bt_val = $(this).parent(".kzqy_czbut").parent(".movie_box").find(".wjdc_list").children("li").eq(0).find(".tm_btitlt").children(".btwenzi").text();
                dx_rq.find(".btwen_text").val(texte_bt_val);
                //遍历题目项目的文字
                var bjjs = 0;
                $(this).parent(".kzqy_czbut").parent(".movie_box").find(".wjdc_list").children("li").each(function () {
                    //可选框框
                    var ktksfcz = $(this).find("input").hasClass("wenb_input");
                    if (ktksfcz) {
                        var jsxz_kk = $(this).index();
                        dx_rq.find(".title_itram").children(".kzjxx_iteam").eq(jsxz_kk - 1).find("label").remove();
                    }
                    //题目选项
                    var texte_val = $(this).find("span").text();
                    dx_rq.find(".title_itram").children(".kzjxx_iteam").eq(bjjs - 1).find(".input_wenbk").val(texte_val);
                    bjjs++

                });
            }
            //填空题目
            if (title == 2) {
                dx_rq.show().html(tktm);
                //赋值文本框
                //题目标题
                var texte_bt_val = $(this).parent(".kzqy_czbut").parent(".movie_box").find(".wjdc_list").children("li").eq(0).find(".tm_btitlt").children(".btwenzi").text();
                dx_rq.find(".btwen_text").val(texte_bt_val);
            }
            //矩阵题目
            if (title == 3) {
                dx_rq.show().html(jztm);
            }
        });

        //增加选项
        $(".zjxx").live("click", function () {
            var zjxx_html = $(this).prev(".title_itram").children(".kzjxx_iteam").html();
            $(this).prev(".title_itram").append("<div class='kzjxx_iteam'>" + zjxx_html + "</div>");
        });

        //删除一行
        $(".del_xm").live("click", function () {
            //获取编辑题目的个数
            var zuxxs_num = $(this).parent(".kzjxx_iteam").parent(".title_itram").children(".kzjxx_iteam").length;
            if (zuxxs_num > 1) {
                $(this).parent(".kzjxx_iteam").remove();
            } else {
                alert("手下留情");
            }
        });
        //取消编辑
        $(".dx_box .qxbj_but").live("click", function () {
            $(this).parent(".bjqxwc_box").parent(".dx_box").empty().hide();
            $(".movie_box").css({"border": "1px solid #fff"});
            $(".kzqy_czbut").remove();

        });

        //完成编辑（编辑）
        $(".swcbj_but").live("click", function () {
            var jcxxxx = $(this).parent(".bjqxwc_box").parent(".dx_box");
            //编辑题目选项的个数
            var bjtm_xm_length = jcxxxx.find(".title_itram").children(".kzjxx_iteam").length;
            var xmtit_length = jcxxxx.parent(".movie_box").children(".wjdc_list").children("li").length - 1;

            //添加选项题目
            //添加选项
            if (bjtm_xm_length > xmtit_length) {
                var fzll = jcxxxx.parent(".movie_box").children(".wjdc_list").children("li").eq(1).html();
                for (var toljs_add = 0; toljs_add < bjtm_xm_length - xmtit_length; toljs_add++) {
                    jcxxxx.parent(".movie_box").children(".wjdc_list").append("<li>" + fzll + "</li>")
                }
            }
            //删除选项
            if (bjtm_xm_length < xmtit_length) {
                for (var toljs = xmtit_length; toljs > bjtm_xm_length; toljs--) {
                    jcxxxx.parent(".movie_box").children(".wjdc_list").children("li").eq(toljs).remove();
                }
            }

            //赋值文本框
            //题目标题
            var texte_bt_val_bj = jcxxxx.find(".btwen_text").val();
            jcxxxx.parent(".movie_box").children(".wjdc_list").children("li").eq(0).find(".tm_btitlt").children(".btwenzi").text(texte_bt_val_bj);
            //遍历题目项目的文字
            var bjjs_bj = 0;
            jcxxxx.children(".title_itram").children(".kzjxx_iteam").each(function () {
                //题目选项
                var texte_val_bj = $(this).find(".input_wenbk").val();
                jcxxxx.parent(".movie_box").children(".wjdc_list").children("li").eq(bjjs_bj + 1).find("span").text(texte_val_bj);
                bjjs_bj++


            });

            //清除
            $(this).parent(".bjqxwc_box").parent(".dx_box").empty().hide();
            $(".movie_box").css({"border": "1px solid #fff"});
            $(".kzqy_czbut").remove();
        });


    });


</script>


<jsp:include page="../makeheader.jsp"/>

<div class=" all_660" style="width: 1100px;display: flex">
    <div class="toolsbar" style="height: 660px;width: 300px;background: white;margin-right: 25px; padding:15px 0 40px;">


        <div style="width: 280px;height: 30px; font-size:16px;color: #000;font-weight: 600">
            <span style="margin-left: 8px">试卷信息</span>
        </div>

        <ul style="padding: 5px;display: flex;">
            <li style="width: 50%;display: inline">
                <button type="button" class="am-btn am-btn-sm am-btn-default am-round" style="margin-left: 21px">
                试卷标题
                </button>
            </li>
            <li style="width: 50%;display: inline">
                <button type="button" class="am-btn am-btn-sm  am-btn-default am-round">默认样式</button>
            </li>
        </ul>

        <div style="width: 280px;height: 30px; font-size:16px;color: #000;font-weight: 600">
            <span style="margin-left: 8px">试卷题型</span>
        </div>

        <ul style="padding: 5px;display: flex;">
            <li style="float: left;width: 50%;">
                <button type="button" class="am-btn am-btn-sm am-btn-default am-round" style="margin-left: 21px">
                    单选题型
                </button>
            </li>
            <li style="float: left;width: 50%;">
                <button type="button" class="am-btn am-btn-sm  am-btn-default am-round">
                    多选题型
                </button>
            </li>
        </ul>
        <ul style="padding: 5px;display: flex;">
            <li style="float: left;width: 50%;">
                <button type="button" class="am-btn am-btn-sm am-btn-default am-round" style="margin-left: 21px">
                    填空题型
                </button>
            </li>
            <li style="float: left;width: 50%;">
                <button type="button" class="am-btn am-btn-sm  am-btn-default am-round">
                    论述题型
                </button>
            </li>
        </ul>


        <div style="width: 280px;height: 30px; font-size:16px;color: #000;font-weight: 600">
            <span style="margin-left: 8px">分页说明</span>
        </div>
        <ul style="padding: 5px;display: flex;">
            <li style="float: left;width: 50%;">
                <button type="button" class="am-btn am-btn-sm am-btn-default am-round" style="margin-left: 21px">
                    大题划分
                </button>
            </li>
            <li style="float: left;width: 50%;">
                <button type="button" class="am-btn am-btn-sm  am-btn-default am-round">分页划分</button>
            </li>
        </ul>

    </div>
    <div class="yd_box"
         style="height: 660px;width: 850px;overflow-x: auto;overflow-y: auto;background: white;border: 1px solid rgba(217,217,217,1) ">

        <div class="movie_box">
            <ul class="wjdc_list">
                <li>
                    <div class="tm_btitlt">
                        <i class="nmb">1</i>. <i class="btwenzi">你有多久的公务员资历？</i>
                        <span class="tip_wz">【单选】</span>
                    </div>
                </li>
                <li>
                    <label>
                        <input name="a" type="radio" value="">
                        <span>0-3年</span>
                    </label>
                </li>
                <li>
                    <label>
                        <input name="a" type="radio" value="">
                        <span>4-10年</span>
                    </label>
                </li>
                <li>
                    <label>
                        <input name="a" type="radio" value="">
                        <span>11-20年</span>
                    </label>
                </li>
                <li>
                    <label>
                        <input name="a" type="radio" value="">
                        <span>20年以上</span>
                    </label>
                </li>
            </ul>
            <div class="dx_box" data-t="0"></div>
        </div>

        <div class="movie_box">
            <ul class="wjdc_list">
                <li>
                    <div class="tm_btitlt"><i class="nmb">2</i>. <i class="btwenzi">对目前的工作哪方面不满意？</i>
                        <span class="tip_wz">【多选】</span>
                    </div>
                </li>
                <li>
                    <label>
                        <input name="" type="checkbox" value="">
                        <span>任务多、压力大</span></label>
                </li>
                <li>
                    <label>
                        <input name="" type="checkbox" value="">
                        <span>人际关系难处理，环境难适应</span></label>
                </li>
                <li>
                    <label>
                        <input name="" type="checkbox" value="">
                        <span> 缺少认同和成就感</span></label>
                </li>
                <li>
                    <label>
                        <input name="" type="checkbox" value="">
                        <span> 其他</span>
                        <input name="" type="text" class="wenb_input">
                    </label>
                </li>
            </ul>
            <div class="dx_box" data-t="1"></div>
        </div>

        <div class="movie_box">
            <ul class="wjdc_list">
                <li>
                    <div class="tm_btitlt"><i class="nmb">3</i>. <i class="btwenzi">任务多、压力大任务多、压力大任务多、压力大？</i><span
                            class="tip_wz">【填空】</span></div>
                </li>
                <li>
                    <label>
                            <textarea name="" cols="" rows="" class="input_wenbk btwen_text btwen_text_dx"
                                      onblur="if(!this.value)this.value='单选题目'"
                                      onclick="if(this.value&&this.value=='单选题目' )  this.value=''"></textarea>
                    </label>
                </li>
            </ul>
            <div class="dx_box" data-t="2"></div>
        </div>

        <div class="xxk_box">
            <ul class="xxk_title">
                <li class="on">单选</li>
                <li>多选</li>
                <li>填空</li>
                <li>矩阵</li>
            </ul>
            <div class="xxk_conn">
                <!--单选----------------------------------------------------------------------------------------------------------------------------------------->
                <div class="xxk_xzqh_box dxuan ">
                    <textarea name="" cols="" rows="" class="input_wenbk btwen_text btwen_text_dx"
                              onblur="if(!this.value)this.value='单选题目'"
                              onclick="if(this.value&&this.value=='单选题目' )  this.value=''">

                    </textarea>
                    <div class="title_itram">
                        <div class="kzjxx_iteam">
                            <input name="" type="radio" value="" class="dxk">
                            <input name="" type="text" class="input_wenbk" value="选项"
                                   onblur="if(!this.value)this.value='选项'"
                                   onclick="if(this.value&&this.value=='选项' )  this.value=''">
                            <a href="javascript:void(0);" class="del_xm">删除</a>
                        </div>

                    </div>

                    <a href="javascript:void(0)" class="zjxx">增加选项</a>

                    <!--完成编辑-->
                    <div class="bjqxwc_box">
                        <a href="javascript:void(0);" class="qxbj_but">取消编辑</a>
                        <a href="javascript:void(0);" class="swcbj_but"> 完成编辑</a>
                    </div>
                </div>

                <!--多选----------------------------------------------------------------------------------------------------------------------------------------->
                <div class="xxk_xzqh_box duoxuan hide">
                    <textarea name="" cols="" rows="" class="input_wenbk btwen_text btwen_text_duox"
                              onblur="if(!this.value)this.value='多选题目'"
                              onclick="if(this.value&&this.value=='多选题目' )  this.value=''">
                    </textarea>
                    <div class="title_itram">
                        <div class="kzjxx_iteam">
                            <input name="" type="radio" value="" class="dxk">
                            <input name="" type="text" class="input_wenbk" value="选项"
                                   onblur="if(!this.value)this.value='选项'"
                                   onclick="if(this.value&&this.value=='选项' )  this.value=''">
                            <a href="javascript:void(0);" class="del_xm">删除</a>
                        </div>
                    </div>
                    <a href="javascript:void(0)" class="zjxx">增加选项</a>

                    <!--完成编辑-->
                    <div class="bjqxwc_box">
                        <a href="javascript:void(0);" class="qxbj_but">取消编辑</a>
                        <a href="javascript:void(0);" class="swcbj_but"> 完成编辑</a>
                    </div>
                </div>

                <!-- 填空----------------------------------------------------------------------------------------------------------------------------------------->
                <div class="xxk_xzqh_box tktm hide">
                    <textarea name="" cols="" rows="" class="input_wenbk btwen_text btwen_text_tk"
                              onblur="if(!this.value)this.value='填空题目'"
                              onclick="if(this.value&&this.value=='填空题目' )  this.value=''">

                    </textarea>

                    <!--完成编辑-->
                    <div class="bjqxwc_box">
                        <a href="javascript:void(0);" class="qxbj_but">取消编辑</a>
                        <a href="javascript:void(0);" class="swcbj_but"> 完成编辑</a>
                    </div>
                </div>

                <!-- 矩阵----------------------------------------------------------------------------------------------------------------------------------------->
                <div class="xxk_xzqh_box  hide">
                    <h4 class="title_wjht">1. 对目前的工作哪方面不满意？</h4>
                    <table width="100%" border="0" cellspacing="0" cellpadding="0" class="tswjdc_table">
                        <tr>
                            <td class="lefttd_qk">&nbsp;</td>
                            <td>非常喜欢</td>
                            <td>喜欢</td>
                            <td>一般</td>
                            <td>不喜欢</td>
                            <td>非常不喜欢</td>
                        </tr>
                        <tr class="os_bjqk">
                            <td class="lefttd_qk">CCTV1</td>
                            <td><input name="c1" type="radio" value=""></td>
                            <td><input name="c2" type="radio" value=""></td>
                            <td><input name="c3" type="radio" value=""></td>
                            <td><input name="c4" type="radio" value=""></td>
                            <td><input name="c5" type="radio" value=""></td>
                        </tr>
                        <tr>
                            <td class="lefttd_qk">CCTV2</td>
                            <td><input name="c1" type="radio" value=""></td>
                            <td><input name="c2" type="radio" value=""></td>
                            <td><input name="c3" type="radio" value=""></td>
                            <td><input name="c4" type="radio" value=""></td>
                            <td><input name="c5" type="radio" value=""></td>
                        </tr>
                        <tr class="os_bjqk">
                            <td class="lefttd_qk">CCTV3</td>
                            <td><input name="c1" type="radio" value=""></td>
                            <td><input name="c2" type="radio" value=""></td>
                            <td><input name="c3" type="radio" value=""></td>
                            <td><input name="c4" type="radio" value=""></td>
                            <td><input name="c5" type="radio" value=""></td>
                        </tr>
                    </table>
                    <div class="line_dl"></div>
                    <div class="jztm">
                        <textarea name="" cols="" rows="" class="input_wenbk btwen_text"
                                  onblur="if(!this.value)this.value='题目'"
                                  onclick="if(this.value&&this.value=='题目' )  this.value=''"></textarea>
                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                            <tr valign="top">
                                <td width="135"><h4 class="ritwenz_xx">左标题</h4>
                                    <textarea name="" cols="" rows="" class="leftbtwen_text"
                                              onblur="if(!this.value)this.value='例子：CCTV1，CCTV2，CCTV3'"
                                              onclick="if(this.value&&this.value=='例子：CCTV1，CCTV2，CCTV3' )  this.value=''"></textarea>
                                </td>
                                <td><h4 class="ritwenz_xx  ">右侧选项文字 <a href="#" class="xzqk">单选</a><a href="#">多选</a>
                                </h4>
                                    <div class="title_itram">
                                        <div class="kzjxx_iteam">
                                            <input name="" type="text" class="input_wenbk jzwent_input" value="选项"
                                                   onblur="if(!this.value)this.value='选项'"
                                                   onclick="if(this.value&&this.value=='选项' )  this.value=''">
                                            <label>
                                                <input name="" type="checkbox" value="" class="fxk">
                                                <span>可填空</span></label>
                                            <a href="javascript:void(0);" class="del_xm">删除</a></div>
                                        <div class="kzjxx_iteam">
                                            <input name="" type="text" class="input_wenbk jzwent_input" value="选项"
                                                   onblur="if(!this.value)this.value='选项'"
                                                   onclick="if(this.value&&this.value=='选项' )  this.value=''">
                                            <label>
                                                <input name="" type="checkbox" value="" class="fxk">
                                                <span>可填空</span></label>
                                            <a href="javascript:void(0);" class="del_xm">删除</a></div>
                                        <div class="kzjxx_iteam">
                                            <input name="" type="text" class="input_wenbk jzwent_input" value="选项"
                                                   onblur="if(!this.value)this.value='选项'"
                                                   onclick="if(this.value&&this.value=='选项' )  this.value=''">
                                            <label>
                                                <input name="" type="checkbox" value="" class="fxk">
                                                <span>可填空</span></label>
                                            <a href="javascript:void(0);" class="del_xm">删除</a></div>
                                    </div>
                                    <a href="javascript:void(0)" class="zjxx" style="margin-left:0;">增加选项</a></td>
                            </tr>
                        </table>

                        <!--完成编辑-->
                        <div class="bjqxwc_box"><a href="javascript:void(0);" class="qxbj_but">取消编辑</a> <a
                                href="javascript:void(0);" class="swcbj_but"> 完成编辑</a></div>
                    </div>
                </div>

            </div>
        </div>

    </div>

    <!--选项卡区域  模板区域---------------------------------------------------------------------------------------------------------------------------------------->


</div>

</body>
</html>

