$("document").ready(function(){

	$(".nav > li").hover(function(){

		$(this).addClass("on");

	    $(this).children("div").stop(true,true).slideDown("fast");

	},function(){

	    $(this).removeClass("on");

		$(this).children("div").stop(true,true).slideUp("fast");

	})

    $("#navChild a:last-child ").css("border-bottom","none") 

    $("#nav li:last-child ").css("width","60px") 

    $("#nav li:last-child a").css("padding-right","0px") 

    $("#nav li").eq(4).css("padding-left","296px") 

     


    

   

    

	var pgname = document.location.href;

		  pgname=pgname.replace(/\?.*$/,'')

		  pgname=pgname.replace(/^.*\//,'')

	if(pgname=="index.php"||pgname=="index.php#"||pgname==null||pgname==""){

		$(".banner").css("height","450px");

		$(".bann").css("height","450px");

		$("#focus").css("height","450px");

		$("#focus ul").css("height","450px");

		$("#focus ul li").css("height","450px");

		

		 scrolling("casePicId","casePicIdIn","casePicIdList2");

	}



	$(".proListPic li").hover(function(){

		$(this).find(".intro").css("display","block");

	},function(){

		$(this).find(".intro").css("display","none");

	})

	

	$(".newsList dl:nth-child(2n)").css("margin-right","0px");

	//$(".casePicUl li:last-child").css("margin-right","0px");

	

	

	 $(".leftProClaList  li ").hover(function(){

		$(this).find(".child").css("display","block");

		$(this).addClass("open");

	},function(){

		$(this).find(".child").css("display","none");

		$(this).removeClass("open");

	});

	

	

  $(".contactnr dl:nth-child(1) dt").css("background","url(/jsp2/style/images/mobile.png) 14px 6px no-repeat");

  $(".contactnr dl:nth-child(2) dt").css("background","url(/jsp2/style/images/tel.png) 10px 4px no-repeat");

  $(".contactnr dl:nth-child(3) dt").css("background","url(/jsp2/style/images/mail.png) 10px 8px no-repeat");

  $(".contactnr dl:nth-child(4) dt").css("background","url(/jsp2/style/images/address.png) 12px 4px no-repeat");

	




  

  $(".share .qq").hover(function(){

  	$(this).css("background","url(/jsp2/style/images/qq2.png) left top no-repeat");

  },function(){

  	$(this).css("background","url(/jsp2/style/images/qq.png) left top no-repeat");

  });

  
  

  

   $('.backTop').click(function(){

		$('body,html').animate({scrollTop:0},500)

	});

   $('.codepic').hover(function(){$('.code').fadeIn()},function(){$('.code').fadeOut()});

	$('.backup').click(function(){

		$('body,html').animate({scrollTop:0},500)

	});

	$(".backup").hide();

	$(function() {

		$(window).scroll(function(){

			if ($(window).scrollTop()>500){

				$(".backup").fadeIn(1000);

			}else{

				$(".backup").fadeOut(1000);

			}

		});

	});

/* end index  jq  */

    

   $(".mainConList .pic1").hover(function(){

	   	   $(this).find(".intro").fadeIn();

	   	   $(this).find(".title").css({"background":"#d0b108","color":"#000000"});

	   },function(){

	   		$(this).find(".intro").fadeOut();

	   	   $(this).find(".title").css({"background":"#060708","color":"#c1c1c1"});

   });



   $(".mainConList .pic1:nth-child(3n)").css("margin-right","0px");

   

   $(".mainConList .pic2:last-child").css("border-bottom","1px solid #5c5c5c");



   $(".pglist ul li").not(".on").hover(function(){ $(this).addClass("on");},function(){$(this).removeClass("on");})

});














function scrolling(a,b,c){

	var speedp=30;

	var tabp=document.getElementById(a);

	var tab1p=document.getElementById(b);

	var tab2p=document.getElementById(c);

	tab2p.innerHTML=tab1p.innerHTML;

	function Marqueep(){

	if(tab2p.offsetWidth-tabp.scrollLeft<=0)

	tabp.scrollLeft-=tab1p.offsetWidth

	else{

	tabp.scrollLeft++;

	}

	}

	var MyMarp=setInterval(Marqueep,speedp);

	tabp.onmouseover=function() {clearInterval(MyMarp)};

	tabp.onmouseout=function() {MyMarp=setInterval(Marqueep,speedp)};

}



function upscrolling(){

	var speed=40;

	sdemo2.innerHTML = sdemo1.innerHTML;

	function Marquee(){

		if(sdemo2.offsetHeight - sdemo.scrollTop <= 0) {

			sdemo.scrollTop -= sdemo1.offsetHeight;

		} else{

			sdemo.scrollTop++;

		}

	}

	var MyMar = setInterval(Marquee,speed);

	sdemo.onmouseover = function(){ clearInterval(MyMar); }

	sdemo.onmouseout = function(){ MyMar=setInterval(Marquee,speed) }

}



