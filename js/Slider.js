// Slider
const sliderNews = document.querySelector('.news');
const sliderImages = document.querySelector('.new');

// Buttons
const prevButton = document.querySelector('#prevButton');
const nextButton = document.querySelector('#nextButton');

// Counter
let counter = 1;
const size = sliderImages[0].clientWidth;

sliderNews.style.transform = "translateX(" + (-size * counter) + "px)";

// Button Listeners
nextButton.addEventListeners("click", () => {
    sliderNews.style.transition = "transform 0.4s ease-in-out";
    counter++;
    sliderNews.style.transform = "translateX(" + (-size * counter) + "px)";
});