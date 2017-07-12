$(document).ready(function(){

    var picShow = "<div id='picShow'><div class='pic_show_box'><div class='pic_quit'></div><a href='javascript:;' title='上一张' class='lbtn'></a><a href='javascript:;' title='下一张' class='rbtn'></a><img  width='593' height='442'  alt=''  /><p><a href='' id='picLink'></a></p></div></div>";
    $(".zoom").click(function(){
        var _this = $(this),liIndex,picUrl,picShowBod,leng,_val,_href;
        liIndex = _this.parents("li").index();
        picUrl = _this.parents("li").find("img").attr("rel");
       // alert(picUrl+"aa");
        _href = _this.parents("li").find("a").attr("href");
        _this.parents("ul").append(picShow);
        picShowBod = $(".pic_show_box");
        picShowBod.find("img").attr("src",picUrl);
        _val = _this.parents("li").find("p").find("a").text();
        $("#picLink").text(_val);
        $("#picLink").attr("href",_href);
        leng = _this.parents("ul").find("li").length;
        $(".lbtn").click(function(){
            if(liIndex>0){
                picUrl = _this.parents("ul").find("li").eq(liIndex-1).find("img").attr("rel");
                _val = _this.parents("ul").find("li").eq(liIndex-1).find("p").find("a").text();
                _href = _this.parents("ul").find("li").eq(liIndex-1).find("p").find("a").attr("href");
                $("#picLink").text(_val);
                picShowBod.find("img").attr("src",picUrl);
                $("#picLink").attr("href",_href);
                return liIndex--;
            }else{
                picUrl = _this.parents("ul").find("li").eq(leng-1).find("img").attr("rel");
                _val = _this.parents("ul").find("li").eq(leng-1).find("p").find("a").text();
                _href = _this.parents("ul").find("li").eq(leng-1).find("p").find("a").attr("href");
                $("#picLink").text(_val);
                picShowBod.find("img").attr("src",picUrl);
                $("#picLink").attr("href",_href);
                liIndex = leng-1;
                return liIndex;
            }
        });
        $(".rbtn").click(function(){
            if(liIndex<leng-1){
                picUrl = _this.parents("ul").find("li").eq(liIndex+1).find("img").attr("rel");
                _val = _this.parents("ul").find("li").eq(liIndex+1).find("p").find("a").text();
                _href = _this.parents("ul").find("li").eq(liIndex+1).find("p").find("a").attr("href");
                $("#picLink").text(_val);
                $(".pic_show_box").find("img").attr("src",picUrl);
                $("#picLink").attr("href",_href);
                return liIndex++;
            }else{
                picUrl = _this.parents("ul").find("li").eq(0).find("img").attr("rel");
                _val = _this.parents("ul").find("li").eq(0).find("p").find("a").text();
                _href = _this.parents("ul").find("li").eq(0).find("p").find("a").attr("href");
                $("#picLink").text(_val);
                $(".pic_show_box").find("img").attr("src",picUrl);
                $("#picLink").attr("href",_href);
                liIndex = 0;
                return liIndex;
            }
        });
        $(".pic_quit").click(function(){
            $("#picShow").remove();
        });
    });
      
});