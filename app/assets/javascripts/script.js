//= require semantic

$('.ui.sidebar').sidebar({
  context: $('.bottom.segment'),
  dimPage: false,
  closable: false,
  returnScroll: true,
  scrollLock: true
}).sidebar('setting', 'transition', 'overlay').sidebar('attach events', '.menu .item');