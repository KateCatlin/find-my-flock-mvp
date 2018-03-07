import Typed from 'typed.js';

function loadDynamicBannerText() {
  new Typed('#banner-typed-text', {
    strings: ["skills", "experience", "values"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };
