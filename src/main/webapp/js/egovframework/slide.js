new Swiper('.swiper-container', {
    direction: 'vertical',
    loop: true,
    autoplay: {
        delay: 5000,
    },
    speed: 2000,
});


new Swiper('.swiper-container2', {
    slidesPerView: 4,
    spaceBetween: 80,
    centeredSlides: false,
    loop: true,
    autoplay: {
        delay: 6000,
    },
    breakpoints: {
        1600: {
          slidesPerView: 4,
          spaceBetween: 50
        },

        1440: {
          slidesPerView: 3,
          spaceBetween: 100
        },

        1200: {
          slidesPerView: 2,
          spaceBetween: 240
        },

        1020: {
          slidesPerView: 2,
          spaceBetween: 220
        },

        864: {
          slidesPerView: 2,
          spaceBetween: 100
        },

        624: {
          slidesPerView: 1,
          
        },

      },
    speed: 1000,
});