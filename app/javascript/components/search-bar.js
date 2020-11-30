import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#typed-text', {
    strings: ["Mario Kart", "Animal Crossing", "Final Fantasy", "Dark Souls", "Dragon Quest", "Bomberman", "Call of Duty"],
    typeSpeed: 60,
    backSpeed: 50,
    startDelay: 200,
    backDelay: 400,
    attr: 'placeholder',
    bindInputFocusEvents: true,
    loop: true
  });
}

export { loadDynamicBannerText };
