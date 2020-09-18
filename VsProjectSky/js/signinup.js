// selecting container and button 
const sign_in_btn = document.querySelector("#sign-in-btn");
const sign_up_btn = document.querySelector("#sign-up-btn");
const mContainer = document.querySelector(".mcontainer");

// adding event listener on buttons

sign_up_btn.addEventListener('click', () => {
    mContainer.classList.add("sign-up-mode");
});

sign_in_btn.addEventListener('click', () => {
    mContainer.classList.remove("sign-up-mode");
});