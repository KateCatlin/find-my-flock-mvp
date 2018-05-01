import Typed from 'typed.js';

function loadDynamicBannerText() {
  new Typed('#banner-typed-text', {
    strings: ["skills ^2000", "experiences ^2000", "values ^2000"],
    typeSpeed: 90,
    loop: true,
    showCursor: true,
    cursorChar: '_'
  });
}

export { loadDynamicBannerText };
