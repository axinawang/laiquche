$("document").ready(function(){

	/***不需要自动滚动，去掉即可***/

var time = window.setInterval(function(){

	$('.picRight').click();	

	},5000);

	$('.picListBd2').mouseover(function() {

		clearInterval(time);

		});

	$('.picListBd2').mouseout(function(){

		  time = window.setInterval(function(){

			$('.picRight').click();	

		 },5000);

	});

	/***不需要自动滚动，去掉即可***/

	var page=1;

	var i=1;

	var box=$('.picListBd2');

	var h=$('.picListBd2 ul').width()+60;

	//alert(h);

	var pagetotal= $('.picListBd2 ul').length;

	$(".picListBd2").css("width",pagetotal*h+"px");

	$('.htmlpic2').html($('.htmlpic1').html());//复制内容

   // document.getElementById("a").innerHTML =  document.getElementById("b").innerHTML;

    w = pagetotal*852;	

    //alert(w);

	$('.picLeft').bind('click',upwardsfn);

	$('.picRight').bind('click',downfn);	

	function upwardsfn(){

		/*

		if($('.htmlpic1,.htmlpic2').is(':animated')){

			$('.htmlpic1,.htmlpic2').stop(true,true);

		}*/

		/*if(page>1){

			box.animate({ marginLeft : '+='+h }, "slow");

			page--;

		}*/

		if($('.htmlpic2,.htmlpic1').is(':animated')){

			$('.htmlpic2,.htmlpic1').stop(true,true);

		}

		if($('.picListBd2 li').length>1){

			ml = parseInt($('.htmlpic1').css('left'));

			sl = parseInt($('.htmlpic2').css('left'));

		   // alert(ml);

			if(ml<=0 && ml>w*-1){

				//alert("aa");

				$('.htmlpic2').css({left: w * -1 + 'px'});

				$('.htmlpic1').animate({left: ml + 852 + 'px'},'slow');				

				if(ml==0){

					$('.htmlpic2').animate({left: (w - 852) * -1 + 'px'},'slow');

				}

			}else{

				//alert("bb");

				$('.htmlpic1').css({left: w * -1 + 'px'});

				$('.htmlpic2').animate({left: sl + 852 + 'px'},'slow');

				if(sl==0){

					$('.htmlpic1').animate({left: ml+852+'px'},'slow');

				}

			}

		}

	}

	function downfn(){

		/*

		if(pagetotal>page){

			box.animate({ marginLeft : '-='+h }, "slow");

			page++;

		}*/

		

		if($('.htmlpic1,.htmlpic2').is(':animated')){

			$('.htmlpic1,.htmlpic2').stop(true,true);

		}

		if($('.picListBd2 li').length>1){//多于4张图片

			ml = parseInt($('.htmlpic1').css('left'));//默认图片ul位置

			sl = parseInt($('.htmlpic2').css('left'));//交换图片ul位置

			if(ml<=0 && ml>w*-1){//默认图片显示时

			  // alert("aa");

				$('.htmlpic2').css({left: '852px'});//交换图片放在显示区域右侧

				$('.htmlpic1').animate({left: ml - 852 + 'px'},'slow');//默认图片滚动				

				if(ml==(w-852)*-1){//默认图片最后一屏时

					$('.htmlpic2').animate({left: '0px'},'slow');//交换图片滚动

				}

			}else{//交换图片显示时

			   // alert("bb");

				$('.htmlpic1').css({left: '852px'})//默认图片放在显示区域右

				$('.htmlpic2').animate({left: sl - 852 + 'px'},'slow');//交换图片滚动

				if(sl==(w-852)*-1){//交换图片最后一屏时

					$('.htmlpic1').animate({left: '0px'},'slow');//默认图片滚动

				}

			}

		}



	}



});

