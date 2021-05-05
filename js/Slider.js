// Slider
const sliderNews = document.getElementsByClassName("news");
const sliderImages = document.getElementsByTagName("li");

// Buttons
const prevButton = document.getElementById("prevButton");
const nextButton = document.getElementById("nextButton");

// Counter
let counter = 1;
//const size = sliderImages[0].clientWidth;

//sliderNews.style.transform = "translateX(-400px)";

//Button Listeners
nextButton.addEventListener("click", () => {
    //sliderNews.style.transition = "all 0.4s ease-in-out";
    counter++;
    sliderNews.style.transform = "translateX(-400px)";
});