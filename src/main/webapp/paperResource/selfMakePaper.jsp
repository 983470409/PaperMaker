<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title>后台上移下移，编辑，删除效果</title>
    <link rel="stylesheet" type="text/css" href="../css/wenjuan_ht.css">
    <script src="../js/jquery-1.8.0.min.js"></script>
    <script src="../js/My_Js.js"></script>
</head>

<body>

<a href="../index.jsp" >index</a>

<div class=" all_660">
    <div class="yd_box">
        <div class="movie_box">
            <ul class="wjdc_list">
                <li>
                    <div class="tm_btitlt"><i class="nmb">1</i>. <i class="btwenzi">你有多久的公务员资历？</i></div>
                </li>
                <li>
                    <label>
                        <input name="a" type="radio" value="">
                        <span>0-3年</span></label>
                </li>
                <li>
                    <label>
                        <input name="a" type="radio" value="">
                        <span>4-10年</span></label>
                </li>
                <li>
                    <label>
                        <input name="a" type="radio" value="">
                        <span>11-20年</span></label>
                </li>
                <li>
                    <label>
                        <input name="a" type="radio" value="">
                        <span>20年以上</span></label>
                </li>
                <li>
                    <label>
                        <input name="a" type="radio" value="">
                        <span>其他</span> <input name="" type="text" class="wenb_input"></label>
                </li>
            </ul>
            <div class="dx_box" data-t="0"></div>
        </div>
        <div class="movie_box">
            <ul class="wjdc_list">
                <li>
                    <div class="tm_btitlt"><i class="nmb">2</i>. <i class="btwenzi">对目前的工作哪方面不满意？</i><span class="tip_wz">【多选】</span></div>
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
                    <div class="tm_btitlt"><i class="nmb">3</i>.  <i class="btwenzi">任务多、压力大任务多、压力大任务多、压力大？</i><span class="tip_wz">【填空】</span></div>
                </li>
                <li>
                    <label>
                        <textarea name="" cols="" rows=""  class="input_wenbk btwen_text btwen_text_dx"    onblur="if(!this.value)this.value='单选题目'" onclick="if(this.value&&this.value=='单选题目' )  this.value=''"></textarea>
                    </label>
                </li>
            </ul>
            <div class="dx_box" data-t="2"></div>
        </div>
        <div class="movie_box">
            <div class="wjdc_list">
                <h4 class="title_wjht"><i class="nmb">4</i>. 对目前的工作哪方面不满意？</h4>
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
            </div>
            <div class="dx_box" data-t="3"></div>
        </div>
    </div>

    <!--选项卡区域  模板区域---------------------------------------------------------------------------------------------------------------------------------------->

    <div class="xxk_box" >
        <ul class="xxk_title">
            <li class="on">单选</li>
            <li>多选</li>
            <li>填空</li>
            <li>矩阵</li>
        </ul>
        <div class="xxk_conn">
            <!--单选----------------------------------------------------------------------------------------------------------------------------------------->
            <div class="xxk_xzqh_box dxuan ">
                <textarea name="" cols="" rows=""  class="input_wenbk btwen_text btwen_text_dx"    onblur="if(!this.value)this.value='单选题目'" onclick="if(this.value&&this.value=='单选题目' )  this.value=''"></textarea>
                <div class="title_itram">
                    <div class="kzjxx_iteam">
                        <input name="" type="radio" value="" class="dxk">
                        <input name="" type="text" class="input_wenbk" value="选项" onblur="if(!this.value)this.value='选项'" onclick="if(this.value&&this.value=='选项' )  this.value=''">
                        <label>
                            <input name="" type="checkbox" value="" class="fxk">
                            <span>可填空</span></label>
                        <a href="javascript:void(0);" class="del_xm">删除</a> </div>
                    <div class="kzjxx_iteam">
                        <input name="" type="radio" value="" class="dxk">
                        <input name="" type="text" class="input_wenbk" value="选项" onblur="if(!this.value)this.value='选项'" onclick="if(this.value&&this.value=='选项' )  this.value=''">
                        <label>
                            <input name="" type="checkbox" value="" class="fxk">
                            <span>可填空</span></label>
                        <a href="javascript:void(0);" class="del_xm">删除</a> </div>
                </div>
                <a href="javascript:void(0)" class="zjxx">增加选项</a>

                <!--完成编辑-->
                <div class="bjqxwc_box"> <a href="javascript:void(0);" class="qxbj_but">取消编辑</a> <a href="javascript:void(0);" class="swcbj_but" > 完成编辑</a> </div>
            </div>

            <!--多选----------------------------------------------------------------------------------------------------------------------------------------->
            <div class="xxk_xzqh_box duoxuan hide">
                <textarea name="" cols="" rows=""  class="input_wenbk btwen_text btwen_text_duox"    onblur="if(!this.value)this.value='多选题目'" onclick="if(this.value&&this.value=='多选题目' )  this.value=''"></textarea>
                <div class="title_itram">
                    <div class="kzjxx_iteam">
                        <input name="" type="radio" value="" class="dxk">
                        <input name="" type="text" class="input_wenbk" value="选项" onblur="if(!this.value)this.value='选项'" onclick="if(this.value&&this.value=='选项' )  this.value=''">
                        <label>
                            <input name="" type="checkbox" value="" class="fxk">
                            <span>可填空</span></label>
                        <a href="javascript:void(0);" class="del_xm">删除</a> </div>
                    <div class="kzjxx_iteam">
                        <input name="" type="radio" value="" class="dxk">
                        <input name="" type="text" class="input_wenbk" value="选项" onblur="if(!this.value)this.value='选项'" onclick="if(this.value&&this.value=='选项' )  this.value=''">
                        <label>
                            <input name="" type="checkbox" value="" class="fxk">
                            <span>可填空</span></label>
                        <a href="javascript:void(0);" class="del_xm">删除</a> </div>
                </div>
                <a href="javascript:void(0)" class="zjxx">增加选项</a>

                <!--完成编辑-->
                <div class="bjqxwc_box"> <a href="javascript:void(0);" class="qxbj_but">取消编辑</a> <a href="javascript:void(0);" class="swcbj_but" > 完成编辑</a> </div>
            </div>

            <!-- 填空----------------------------------------------------------------------------------------------------------------------------------------->
            <div class="xxk_xzqh_box tktm hide">
                <textarea name=""  cols="" rows="" class="input_wenbk btwen_text btwen_text_tk" onblur="if(!this.value)this.value='填空题目'" onclick="if(this.value&&this.value=='填空题目' )  this.value=''"></textarea>

                <!--完成编辑-->
                <div class="bjqxwc_box"> <a href="javascript:void(0);" class="qxbj_but">取消编辑</a> <a href="javascript:void(0);" class="swcbj_but" > 完成编辑</a> </div>
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
                    <textarea name="" cols="" rows="" class="input_wenbk btwen_text"   onblur="if(!this.value)this.value='题目'" onclick="if(this.value&&this.value=='题目' )  this.value=''"></textarea>
                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr valign="top">
                            <td width="135"><h4 class="ritwenz_xx">左标题</h4>
                                <textarea name="" cols="" rows="" class="leftbtwen_text" onblur="if(!this.value)this.value='例子：CCTV1，CCTV2，CCTV3'" onclick="if(this.value&&this.value=='例子：CCTV1，CCTV2，CCTV3' )  this.value=''"></textarea></td>
                            <td><h4 class="ritwenz_xx  ">右侧选项文字 <a href="#" class="xzqk">单选</a><a href="#" >多选</a></h4>
                                <div class="title_itram">
                                    <div class="kzjxx_iteam">
                                        <input name="" type="text" class="input_wenbk jzwent_input" value="选项" onblur="if(!this.value)this.value='选项'" onclick="if(this.value&&this.value=='选项' )  this.value=''">
                                        <label>
                                            <input name="" type="checkbox" value="" class="fxk">
                                            <span>可填空</span></label>
                                        <a href="javascript:void(0);" class="del_xm">删除</a> </div>
                                    <div class="kzjxx_iteam">
                                        <input name="" type="text" class="input_wenbk jzwent_input" value="选项" onblur="if(!this.value)this.value='选项'" onclick="if(this.value&&this.value=='选项' )  this.value=''">
                                        <label>
                                            <input name="" type="checkbox" value="" class="fxk">
                                            <span>可填空</span></label>
                                        <a href="javascript:void(0);" class="del_xm">删除</a> </div>
                                    <div class="kzjxx_iteam">
                                        <input name="" type="text" class="input_wenbk jzwent_input" value="选项" onblur="if(!this.value)this.value='选项'" onclick="if(this.value&&this.value=='选项' )  this.value=''">
                                        <label>
                                            <input name="" type="checkbox" value="" class="fxk">
                                            <span>可填空</span></label>
                                        <a href="javascript:void(0);" class="del_xm">删除</a> </div>
                                </div>
                                <a href="javascript:void(0)" class="zjxx" style="margin-left:0;">增加选项</a></td>
                        </tr>
                    </table>

                    <!--完成编辑-->
                    <div class="bjqxwc_box"> <a href="javascript:void(0);" class="qxbj_but">取消编辑</a> <a href="javascript:void(0);" class="swcbj_but" > 完成编辑</a> </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>

