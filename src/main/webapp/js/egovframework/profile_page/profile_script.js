setTimeout(function(){
	$('.bg').fadeOut();
}, 600);

$('#section1 .container, .bg').css('height',$(window).height());

$('.home, .icon-top').on('click', function() {
	$('html, body').animate({scrollTop: 0}, 600, 'easeInOutCubic');
});
$('.motto').on('click', function() {
	let motto = $('#section2').offset().top;
	$('html, body').animate({scrollTop: motto}, 600, 'easeInOutCubic');
});
$('.interests').on('click', function() {
	let interests = $('#section3').offset().top;
	$('html, body').animate({scrollTop: interests}, 600, 'easeInOutCubic');
});
$('.portfolio').on('click', function() {
	let portfolio = $('#section4').offset().top;
	$('html, body').animate({scrollTop: portfolio}, 600, 'easeInOutCubic');
});
$('.awards').on('click', function() {
	let awards = $('#section5').offset().top;
	$('html, body').animate({scrollTop: awards}, 600, 'easeInOutCubic');
});

$('.icon-bars').on('click', function() {
	$('.menu').animate({right: 0}, 450, 'easeInOutCubic');
	$('.background').animate({right: 0}, 450, 'easeInOutCubic');
});
$('.background').on('click', function() {
	$('.menu').animate({right: '-400px'}, 450, 'easeInOutCubic');
	$(this).animate({right: '-3000px'}, 450, 'easeInOutCubic');
});

$(window).scroll(function() {
	let asdf = $(window).scrollTop();
	if(asdf >= 100) {
		$('.icon-top').css('display', 'block');
	}else {
		$('.icon-top').css('display', 'none');
	}
});

let width = $(window).width();
let h = 1850;
let c = 1150;

if(width <= 1270 && width >= 570) {
	h = 3050;
	c = 1700;
}else if(width < 570) {
	h = 2500;
	c = 1420;
}

$('.more').on('click', function() {
	$('#section4 .container').animate({height: h}, 600, 'easeInOutCubic');
	$(this).css('display','none');
	$('.close').css({
		'display':'block',
		'position':'absolute',
		'bottom':'40px',
		'left':'50%',
		'transform':'translateX(-50%)'
	});
	$('.hidden').show('slow');
});
$('.close').on('click', function() {
	$('.hidden').hide('slow');
	$('#section4 .container').animate({height: c}, 600, 'easeInOutCubic');
	$(this).css('display','none');
	$('.more').css({'display':'block',
		'position':'absolute',
		'bottom':'80px',
		'left':'50%',
		'transform':'translateX(-50%)'
	});
});

$(".menu nav .box").hover(function(e){
  	$(this).find("span").animate({"margin-left":"20px"}, 100, 'easeInOutCubic');
}, function(){
  	$(this).find("span").animate({"margin-left":"0px"}, 100, 'easeInOutCubic');
});

let date = new Date();
$('footer .copy').html('Copyright &copy; '+date.getFullYear()+' designed by Yoo');